class Slashbase < Formula
  desc "A modern in-browser database IDE & CLI"
  homepage "https://slashbase.com/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.4.1/mac_intel_chip.zip"
    sha256 "43ee0bfe0441b007651593ba97e84b826b238589978b78ffc41e254b24a2348f"
  else
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.4.1/mac_apple_chip.zip"
    sha256 "9c6559ad1058746d496fd3a838b9d1ace812df28983eee8d670325076c319095"
  end

  def install
    bin.install 'slashbase'
  end

  test do
    system "#{bin}/slashbase", "version"
  end
end
