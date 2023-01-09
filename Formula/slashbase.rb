class Slashbase < Formula
  desc "A modern in-browser database IDE & CLI"
  homepage "https://slashbase.com/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.4.0/mac_intel_chip.zip"
    sha256 "466942bde374977a46ab1ba39a35ea8974d678767b180140d2d578456e57ca02"
  else
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.4.0/mac_apple_chip.zip"
    sha256 "7588a67dbebc699b156f845556a85fa6295fded37a604b4eae82d07dabba9ac3"
  end

  def install
    bin.install 'slashbase'
  end

  test do
    system "#{bin}/slashbase", "version"
  end
end
