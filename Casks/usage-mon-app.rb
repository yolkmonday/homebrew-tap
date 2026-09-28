cask "usage-mon-app" do
  version "0.1.0"
  sha256 "9f06582116a317c97552aec369f6be346c97d45981b7beeef03342b19143f143"

  url "https://github.com/yolkmonday/usage-mon/releases/download/v#{version}/UsageMenuBar-#{version}.zip"
  name "Usage Monitor"
  desc "Menu bar monitor for Claude Code and Codex usage"
  homepage "https://github.com/yolkmonday/usage-mon"

  depends_on formula: "yolkmonday/tap/usage-mon"
  depends_on macos: :ventura

  app "UsageMenuBar.app"

  uninstall quit: "com.yolkmonday.usagemon"

  zap trash: "~/.cache/usage-mon"
end
