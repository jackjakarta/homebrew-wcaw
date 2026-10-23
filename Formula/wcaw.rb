class Wcaw < Formula
  desc "Narrate the history of a single TypeScript symbol"
  homepage "https://github.com/jackjakarta/what-changed-and-why"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-darwin-arm64.tar.gz"
      sha256 "6ebf393b68e6994c0fe01a0819fc56b06e89230591786104d24124a661071053"
    else
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-darwin-amd64.tar.gz"
      sha256 "39e611de132bab02161827947bf6dcea588e376b7bceed6b98ee927ae54490cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-linux-arm64.tar.gz"
      sha256 "1255f9fdd4ccc1bea2589f20164a2f6bb46343d1d764ab2aa594138c9df1732a"
    else
      url "https://github.com/jackjakarta/what-changed-and-why/releases/download/0.1.3/wcaw-linux-amd64.tar.gz"
      sha256 "1a33e219133132d6eafdab0d0ff433c8f13d9840cbece17882a873a9cab7d0a3"
    end
  end

  def install
    bin.install "wcaw"
  end

  test do
    system "#{bin}/wcaw", "-h"
  end
end
