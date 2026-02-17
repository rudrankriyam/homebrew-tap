# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.13/asc_0.28.13_macOS_arm64"
  version "0.28.13"
  sha256 "aee5bb9edb554bc3b53653da9612eee267e7342829e43e602f29cfe062077a7f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.13_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
