class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.4"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.4/swim-v0.1.4-macos-universal.tar.gz"
    sha256 "90b93db5b1c17e98f945666495b5e084bb857bb1ab6d7af0a1a895e2cfb5beb4"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.4/swim-v0.1.4-linux-x86_64.tar.gz"
    sha256 "5434d3608e9a00275d5e7d61363faf8a2a00e634c6636b960e210a4ac1ca3f1b"
  end

  def install
    bin.install "swim"
  end
end
