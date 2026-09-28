cask "noor" do
  version "1.2.3"
  sha256 "ee7c16b4833b6284293c98b985ef2bfff51bca83bbc4550b563ccaa20e3e5e71"

  url "https://github.com/yolkmonday/noor/releases/download/v#{version}/Noor-#{version}.zip"
  name "Noor"
  desc "Aplikasi waktu solat untuk macOS"
  homepage "https://github.com/yolkmonday/noor"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  auto_updates true

  app "Noor.app"

  uninstall quit: "com.noor.app"

  postflight do
    system "open", "#{appdir}/Noor.app"
  end

  zap trash: [
    "~/Library/Preferences/com.noor.app.plist",
  ]
end
