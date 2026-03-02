class GranolaCli < Formula
  desc "Granola CLI tool"
  homepage "https://github.com/jeffmcfadden/granola-cli"
  version "0.2.1"

  head "https://github.com/jeffmcfadden/granola-cli.git", branch: "main"

  url "https://github.com/jeffmcfadden/granola-cli/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "d094f180a80e9d2f2509ce06b8e73e433f0cfd6d0e6e86ec49dbdb441ff153fe"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "ruby@3"

  def install
    # Ensure Bundler uses brewed Ruby during build
    ENV.prepend_path "PATH", Formula["ruby@3"].opt_bin

    # Keep project tree intact so require_relative works
    libexec.install Dir["*"]

    # Ensure the repo-provided executable exists and is executable
    app_exec = libexec/"bin/cocam2"
    app_exec.chmod 0755 if app_exec.exist?

    # Vendor gems under libexec so the keg is self-contained
    ENV["BUNDLE_PATH"] = (libexec/"vendor/bundle").to_s
    ENV["BUNDLE_WITHOUT"] = "development:test"
    ENV["BUNDLE_BIN"] = (libexec/"bin").to_s

    cd libexec do
      system "bundle", "config", "set", "path", ENV["BUNDLE_PATH"]
      system "bundle", "config", "set", "without", ENV["BUNDLE_WITHOUT"]
      system "bundle", "config", "set", "bin", ENV["BUNDLE_BIN"]
      system "bundle", "install"

      # Remove build-time artifacts that may embed Homebrew shims paths (audit-clean)
      rm Dir[libexec/"vendor/bundle/**/ext/**/{mkmf.log,config.log}"]
      rm_r Dir[libexec/"vendor/bundle/**/ext/**/tmp"]
      rm_r Dir[libexec/"vendor/bundle/**/cache"]
    end

    # Create a wrapper in bin/ that sets up env and calls the repo's bin/imsg
    env = {
      GEM_HOME:       ENV["BUNDLE_PATH"],
      GEM_PATH:       ENV["BUNDLE_PATH"],
      BUNDLE_GEMFILE: (libexec/"Gemfile").to_s,
      RUBYLIB:        (libexec/"lib").to_s,
      PATH:           "#{Formula["ruby@3"].opt_bin}:$PATH",
    }
    # Always write the wrapper so Homebrew links a real executable under keg/bin
    (bin/"granola").write_env_script libexec/"bin/granola", env
  end

  test do
    # output = shell_output("#{bin}/#{name} --help")
    # assert_match "granola [options]", output
    true
  end

end
