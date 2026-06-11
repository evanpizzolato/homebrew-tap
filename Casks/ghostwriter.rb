cask "ghostwriter" do
  version "0.42.2"
  sha256 "3abcb86287b70016fecf9c6eed276f67532f9779f4639400ca0dc430bcdb2e7c"

  url "https://github.com/evanpizzolato/ghostwriter/releases/download/v#{version}/Ghostwriter.dmg"
  name "Ghostwriter"
  desc "Privacy-focused notes that stay hidden from screenshots and screen shares"
  homepage "https://evanpizzolato.github.io/ghostwriter/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Ghostwriter.app"

  zap trash: [
    "~/Library/Application Support/Ghostwriter",
    "~/Library/Caches/com.evanpizzolato.ghostwriter",
    "~/Library/Caches/com.evanpizzolato.ghostwriter.ShipIt",
    "~/Library/Preferences/com.evanpizzolato.ghostwriter.plist",
    "~/Library/Saved Application State/com.evanpizzolato.ghostwriter.savedState",
  ]
end
