class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.2"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.2/swim-v0.1.2-macos-universal.tar.gz"
    sha256 "4053ea5eb86c2e86a296440965a896f6e4277b093a57d54145ad473c79eca216"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.2/swim-v0.1.2-linux-x86_64.tar.gz"
    sha256 "b536b0b02288fb31c5e6609756eb9ceaaa3f243e95101d09bb9c3ed12a291a87"
  end

  def install
    bin.install "swim"
  end
end
