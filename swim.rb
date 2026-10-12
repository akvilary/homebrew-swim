class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.11"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.11/swim-v0.1.11-macos-universal.tar.gz"
    sha256 "0db58158b480c67627ea33f05559047d97347a3d44fa26efb9d1cc728250ae64"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.11/swim-v0.1.11-linux-x86_64.tar.gz"
    sha256 "3e624e88ede276b0616a058dd43be525a1f5f8724b742c4a291dd9b19b6b915b"
  end

  def install
    bin.install "swim"
  end
end
