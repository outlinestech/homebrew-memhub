class Memhub < Formula
  desc "Persistent memory layer for AI tools — save and search from your terminal"
  homepage "https://memhub-dashboard.vercel.app/"
  version "0.1.0"

  on_macos do
    url "https://github.com/outlinestech/memhub/releases/download/v0.1.0/memhub-macos"
    sha256 "PLACEHOLDER_REPLACE_WITH_REAL_SHA256"
  end

  on_linux do
    url "https://github.com/outlinestech/memhub/releases/download/v0.1.0/memhub-linux"
    sha256 "PLACEHOLDER_REPLACE_WITH_REAL_SHA256"
  end

  def install
    bin.install "memhub-macos" => "memhub" if OS.mac?
    bin.install "memhub-linux" => "memhub" if OS.linux?
  end

  test do
    system "#{bin}/memhub", "--version"
  end
end
