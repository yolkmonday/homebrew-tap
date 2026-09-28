cask "agent-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "4f4ab5e6e675bae5df46e8139bfe673ed00964015e22e118f3a1da045a97a297",
         intel: "a3bb842a4f10bc3b8d1c8dec5471d2fffc449e5bec13e2eff4f9226567a3e6cd"

  url "https://github.com/yolkmonday/agent-deck/releases/download/v#{version}/Agent.Deck_#{version}_#{arch}.dmg"
  name "Agent Deck"
  desc "Local dashboard for coding agent sessions (Claude Code, opencode, Codex)"
  homepage "https://github.com/yolkmonday/agent-deck"

  auto_updates true
  depends_on :macos

  app "Agent Deck.app"

  uninstall quit: "dev.agentdeck.app"

  zap trash: [
    "~/Library/Application Support/dev.agentdeck.app",
    "~/Library/Caches/dev.agentdeck.app",
    "~/Library/WebKit/dev.agentdeck.app",
  ]
end
