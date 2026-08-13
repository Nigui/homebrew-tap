cask "tackit" do
  version "0.0.1-pre"
  sha256 "4ee38951777bc5cd61f2776f78791cdb04491bf783358a20981178e47cc34306"

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
