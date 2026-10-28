cask "tackit" do
  version "0.1.0"
  sha256 "6876adff5df5ee1cd6fa9d06847437f3f9a48a916ef38a34699a27da3695f8c1"

  url "https://github.com/Nigui/tackit/releases/download/v#{version}/Tackit.dmg",
      verified: "github.com/Nigui/tackit/"
  name "Tackit"
  desc "Blazing-fast, keyboard-driven sticky notes for macOS"
  homepage "https://github.com/Nigui/tackit"

  depends_on macos: :sonoma

  app "Tackit.app"

  # Pre-release builds are not yet notarized — install with `--no-quarantine`
  # (or right-click → Open once) until a signed release ships.

  zap trash: [
    "~/Library/Application Support/Tackit",
    "~/Library/Preferences/app.tackit.mac.plist",
    "~/Library/Logs/tackit-m0.log",
  ]
end
