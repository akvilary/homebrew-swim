class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.5"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.5/swim-v0.1.5-macos-universal.tar.gz"
    sha256 "20a5bce1f3a7724c8a05a6200144f75cc75db873e075ecd204261b02035444ce"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.5/swim-v0.1.5-linux-x86_64.tar.gz"
    sha256 "6fbc4dbfc3113d973cb2426f47acf575a45496ec3f7163ee15562aa3daca46b8"
  end

  def install
    bin.install "swim"
  end
end
