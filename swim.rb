class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.0.5"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.0.4/swim-v0.0.4-macos-universal.tar.gz"
    sha256 "94e96ea19fdcc8fe72346f398552023146cdfcffcd2c41f3fb2d059481353de5"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.0.5/swim-v0.0.5-linux-x86_64.tar.gz"
    sha256 "96f6319c94a85a8ee4fb22bcfc48440b7e9bc7868dc44b36c13c6059b8055d42"
  end

  def install
    bin.install "swim"
  end
end
