class Swim < Formula
  desc "Vim-like terminal editor written in Swift"
  homepage "https://github.com/akvilary/swim"
  version "0.1.30"

  on_macos do
    url "https://github.com/akvilary/swim/releases/download/v0.1.30/swim-v0.1.30-macos-universal.tar.gz"
    sha256 "95599510aa2632e683c3ee8c92ab41dccf461732b3e37f6920b92fb0eaacdc80"
    # The file explorer's icons are Nerd Font glyphs; the pinned
    # Symbols font feeds the terminal's font fallback when the main
    # font lacks the codepoints. No terminal configuration is touched.
    depends_on cask: "font-symbols-only-nerd-font"
  end

  on_linux do
    url "https://github.com/akvilary/swim/releases/download/v0.1.30/swim-v0.1.30-linux-x86_64.tar.gz"
    sha256 "a2b83819501859bdfa67f1a670a4162eb17bc68f87959dab0d93730047c1e9e5"
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
