cask "koodo-reader" do
  arch arm: "arm64", intel: "x64"

  version "1.7.4"
  sha256 arm:   "def811c8e477bda788ae1036a395da499556ecbd2ee624249d95c897576efc41",
         intel: "6270ed3bf37965de4e9d430de4d72036f70df8d957f0220419424947081f324e"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source epub reader"
  homepage "https://koodo.960960.xyz/en"

  livecheck do
    url :homepage
    regex(/Stable\s*Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Koodo Reader.app"

  zap trash: [
    "~/Library/Application Support/koodo-reader",
    "~/Library/Preferences/xyz.960960.koodo.plist",
    "~/Library/Saved Application State/xyz.960960.koodo.savedState",
  ]
end
