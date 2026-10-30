cask "agent-manager" do
  version "1.0.0"
  sha256 "902b49ac5561d4a7b232c3efa4880cbf7fab3c7f67e70bba7b7a8a18038ec2ec"

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
