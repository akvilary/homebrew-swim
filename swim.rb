class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.7"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.7/swim-v0.1.7-macos-universal.tar.gz"
    sha256 "d4d90a945e232ea971a6b587689e02d8730a7df27962c7d76b9055ecb144693d"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.7/swim-v0.1.7-linux-x86_64.tar.gz"
    sha256 "743e1fb73db70aa7b25d2fd899bd7d1331ff9c0e6bf3264a1422462a814bf51c"
  end

  def install
    bin.install "swim"
  end
end
