cask "agent-manager" do
  version "1.0.1"
  sha256 "abe0720f9ed4e2cee1875875e4460f552c300f88f81c344f978b43c5eb17d4e8"

  url "https://github.com/jeffmcfadden/agent-manager/releases/download/v#{version}/AgentManager-#{version}-macos-arm64.zip"
  name "Agent Manager"
  desc "Native terminal session manager powered by libghostty and tmux"
  homepage "https://github.com/jeffmcfadden/agent-manager"

  depends_on arch: :arm64
  depends_on formula: "tmux"
  depends_on macos: :ventura

  app "AgentManager.app"

  caveats do
    <<~EOS
      Agent Manager is ad hoc signed and is not notarized.
      macOS may require approval in System Settings > Privacy & Security on first launch.
    EOS
  end
end
