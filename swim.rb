class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.10"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.10/swim-v0.1.10-macos-universal.tar.gz"
    sha256 "229c69c3216baccd876c32247934675f40eaebb0d680b29f50771818f3894d2e"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.10/swim-v0.1.10-linux-x86_64.tar.gz"
    sha256 "654be69cd72c24c6be6782d50af67a66027587393468583e1d91302393ab7314"
  end

  def install
    bin.install "swim"
  end
end
