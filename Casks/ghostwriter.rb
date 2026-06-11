cask "ghostwriter" do
  version "0.43.0"
  sha256 "959e00bebe3a0f67219bff8ec05da0de2b7eb0be63d3440f58b50a65c6d74df6"

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
