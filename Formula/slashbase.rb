class Slashbase < Formula
  desc "A modern in-browser database IDE & CLI"
  homepage "https://slashbase.com/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.3.1/mac_intel_chip.zip"
    sha256 "c3d0b7b16de623216483f9cfbce28d480f19483838bd0d1bcbe73c488ac4e984"
  else
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.3.1/mac_apple_chip.zip"
    sha256 "12438f3ed59cb50428e9d4af655960ec5f386f68035e2b6309581afa26720b22"
  end

  def install
    bin.install 'slashbase'
  end

  test do
    system "#{bin}/slashbase", "version"
  end
end
