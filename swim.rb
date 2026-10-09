class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.6"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.6/swim-v0.1.6-macos-universal.tar.gz"
    sha256 "a213b4b5d507425769d3a31ee133c49629a06ffc0fd1e0e7389215a207473cec"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.6/swim-v0.1.6-linux-x86_64.tar.gz"
    sha256 "388295af0e7e04e2569de80c7a65e756b62ef1d0250c67e14596e16973374f9c"
  end

  def install
    bin.install "swim"
  end
end
