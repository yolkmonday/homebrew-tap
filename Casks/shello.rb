cask "shello" do
  version "0.1.21"
  sha256 "24d6934d4f22eae04114b3a270767ae9cc576fbc76fefc575e86f8e691bcd871"

  url "https://github.com/yolkmonday/shello/releases/download/v#{version}/Shello_#{version}_universal.dmg"
  name "Shello"
  desc "Lightweight SSH terminal client built with Tauri"
  homepage "https://github.com/yolkmonday/shello"

  auto_updates true
  depends_on :macos

  app "Shello.app"

  zap trash: [
    "~/Library/Application Support/dev.shello.client",
    "~/Library/Caches/dev.shello.client",
    "~/Library/Preferences/dev.shello.client.plist",
  ]
end
