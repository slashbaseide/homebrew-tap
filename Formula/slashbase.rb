class Slashbase < Formula
  desc "A modern in-browser database IDE & CLI"
  homepage "https://slashbase.com/"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.5.0/mac_intel_chip.zip"
    sha256 "c5273a667a6a2aa19533a1df19bc256f21bd487772c526b3981db219f97a019c"
  else
    url "https://github.com/slashbaseide/slashbase/releases/download/v0.5.0/mac_apple_chip.zip"
    sha256 "a4f5bdc6360448a072df20bb4fcecd6f2bbff982208b7ef5cd98d843bacf7288"
  end

  def install
    bin.install 'slashbase'
  end

  test do
    system "#{bin}/slashbase", "version"
  end
end
