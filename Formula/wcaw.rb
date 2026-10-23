class Wcaw < Formula
  desc "Narrate the history of a single TypeScript symbol"
  homepage "https://github.com/jackjakarta/what-changed-and-why"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-darwin-arm64.tar.gz"
      sha256 "c78240d71e725414188cd331bf1d6bf4e6cf0c87a5edfea0d20741722215d240"
    else
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-darwin-amd64.tar.gz"
      sha256 "a9ede4b94473a540e0850786e611f5d9a86b32062a440a9e730705b215dc4d3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-linux-arm64.tar.gz"
      sha256 "2bf29eea4c5dffbf42054adbc131d1e1894814d8d3a9d2465489865aa5ca92cf"
    else
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-linux-amd64.tar.gz"
      sha256 "7827a18ebb8be4f96e3e634a27237bd1f9a989dbdf440c8edfcc7904fbfe3d82"
    end
  end

  def install
    bin.install "wcaw"
  end

  test do
    system "#{bin}/wcaw", "-h"
  end
end
