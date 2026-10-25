class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.19"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.19/swim-v0.1.19-macos-universal.tar.gz"
    sha256 "659c49e04ee731565b3f7fd8316c2f19f75f59f185aa2fb779ab7713a4cdba81"
    # The file explorer's icons are Nerd Font glyphs; the pinned
    # Symbols font feeds the terminal's font fallback when the main
    # font lacks the codepoints. No terminal configuration is touched.
    depends_on cask: "font-symbols-only-nerd-font"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.19/swim-v0.1.19-linux-x86_64.tar.gz"
    sha256 "25e80ea4bb6e4d72fed9c5ff702d2cd507ac03bbbdc129cfd6d5a227c73d06b9"
  end

  def install
    bin.install "swim"
  end

  def caveats
    if OS.mac?
      <<~EOS
        The file explorer's icons are Nerd Font glyphs; the Symbols
        Nerd Font is installed automatically as a cask dependency and
        picked up by your terminal's font fallback.
      EOS
    else
      <<~EOS
        The file explorer's icons are Nerd Font glyphs. Casks do not
        exist on Linux, so the icon font takes a one-liner:
          curl -fL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/NerdFontsSymbolsOnly.tar.xz | tar xJ
          mkdir -p ~/.local/share/fonts && cp SymbolsNerdFontMono-Regular.ttf ~/.local/share/fonts/ && fc-cache -f
        Or run swim's install.sh (binary + font together), or set
        SWIM_ICONS=plain for icon-free rows.
      EOS
    end
  end
end
