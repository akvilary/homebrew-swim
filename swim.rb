class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  url "https://github.com/akvilary/swim/releases/download/v0.0.1/swim-v0.0.1-macos-universal.tar.gz"
  sha256 "5bd69e3e0325b6df626430dc1a67d4ee24045e3725b052af26ff2ccddd65b757"
  version "0.0.1"

  def install
    bin.install "swim"
  end

  test do
    assert_match "swim 0.0.1", shell_output("#{bin}/swim --version")
  end
end
