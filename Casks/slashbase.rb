cask "Slashbase" do
  arch arm: "mac_apple_chip", intel: "mac_intel_chip"
  version "v0.8.3"
  sha256 :no_check
  
  url  "https://github.com/slashbaseide/slashbase/releases/download/#{version}/#{arch}.dmg"
  name "Slashbase"
  desc "Open-source Modern database IDE for dev/data workflows"
  homepage "https://slashbase.com/"
  license "Apache-2.0"
  
  livecheck do
    url "https://github.com/slashbaseide/slashbase/releases/latest/download/#{arch}.dmg"
    strategy :extract_plist
  end

  auto_updates true

  app "Slashbase.app"
end
