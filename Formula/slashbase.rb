class Slashbase < Formula
  desc "A modern in-browser database IDE & CLI"
  homepage "https://slashbase.com/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.3.2/mac_intel_chip.zip"
    sha256 "b849d1ca67c0a70d9a7fd281da99ee1eda15bc0483a566cf1b53ca2becfc217d"
  else
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.3.2/mac_apple_chip.zip"
    sha256 "5424f04623f331125925f90bf1693135b3fda100c338de97b2ab8ee9069173d7"
  end

  def install
    bin.install 'slashbase'
  end

  test do
    system "#{bin}/slashbase", "version"
  end
end
