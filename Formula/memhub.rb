class Memhub < Formula
  desc "Persistent memory layer for AI tools — save and search from your terminal"
  homepage "https://memhub-dashboard.vercel.app/"
  version "0.1.0"

  on_macos do
    url "https://github.com/outlinestech/memhub/releases/download/v0.1.0/memhub-macos"
    sha256 "d60842498fd429effe669495ba65644037b2f7932d98d0c96d56bc929faf9202"
  end

  on_linux do
    url "https://github.com/outlinestech/memhub/releases/download/v0.1.0/memhub-linux"
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
