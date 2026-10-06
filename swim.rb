class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.3"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.3/swim-v0.1.3-macos-universal.tar.gz"
    sha256 "23b9d082aeb311a33303972158f455abdd7e000b3186eb824b096fbe15af14ea"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.3/swim-v0.1.3-linux-x86_64.tar.gz"
    sha256 "a2479e43a8571984c1d9d0cea169969e056a03fa849298ed46bfefc4eb8990a6"
  end

  def install
    bin.install "swim"
  end
end
