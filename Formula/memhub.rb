class Memhub < Formula
  desc "Persistent memory layer for AI tools — save and search from your terminal"
  homepage "https://memhub-dashboard.vercel.app/"
  version "0.1.0"

  on_macos do
    url "https://github.com/outlinestech/homebrew-memhub/releases/download/v0.1.0/memhub-macos"
    sha256 "d7a2f3b515378517580c19d4347ef0a143638b008b4e0fe61fbb9fce05d8fcc3"
  end

  on_linux do
    url "https://github.com/outlinestech/homebrew-memhub/releases/download/v0.1.0/memhub-linux"
    sha256 "26d7f3c0f8d0d98da7df3d1eddac6529bff3b9bfb9ab38d11c2a5049c16f4c85"
  end

  def install
    bin.install "memhub-macos" => "memhub" if OS.mac?
    bin.install "memhub-linux" => "memhub" if OS.linux?
  end

  test do
    system "#{bin}/memhub", "--version"
  end
end
