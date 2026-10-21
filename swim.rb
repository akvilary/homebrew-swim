class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.17"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.17/swim-v0.1.17-macos-universal.tar.gz"
    sha256 "9bd1e365681be15bd6522e73809a9f0e4df326aad7dcad2742e0300e7c8924b9"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.17/swim-v0.1.17-linux-x86_64.tar.gz"
    sha256 "57c18f9e97df4b70f196ab55fa620dc69204fd39117f7c3f041bd910d44ba590"
  end

  def install
    bin.install "swim"
  end
end
