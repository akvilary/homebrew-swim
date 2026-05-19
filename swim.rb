class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.0.4"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.0.4/swim-v0.0.4-macos-universal.tar.gz"
    sha256 "94e96ea19fdcc8fe72346f398552023146cdfcffcd2c41f3fb2d059481353de5"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.0.4/swim-v0.0.4-linux-x86_64.tar.gz"
    sha256 "55237115b776b7d5b13a3a8b8b060c1331edc53ef0415f7f4cee653ac6bc9fc9"
  end

  def install
    bin.install "swim"
  end
end
