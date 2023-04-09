cask "Slashbase" do
  version "v0.8.3"
  sha256 arm:   "b497381ac3ed04f1438a6d64dede18d906ec41d7f63563a063db6f2ec80eeb46",
         intel: "2de77de95422e043cce4bc9bac6c194d1f178927b632da614e0b52120c150475"
  url    arm:   "https://github.com/slashbaseide/slashbase/releases/download/#{version}/mac_apple_chip.dmg",
         intel: "https://github.com/slashbaseide/slashbase/releases/download/#{version}/mac_intel_chip.dmg"
  
  name "Slashbase"
  desc "Open-source Modern database IDE for dev/data workflows"
  homepage "https://slashbase.com/"
  license "Apache-2.0"
  
  livecheck do
    url  arm:   "https://github.com/slashbaseide/slashbase/releases/latest/download/mac_apple_chip.dmg",
         intel:  "https://github.com/slashbaseide/slashbase/releases/latest/download/mac_intel_chip.dmg"
    strategy :extract_plist
  end

  auto_updates true

  app "Slashbase.app"
end
