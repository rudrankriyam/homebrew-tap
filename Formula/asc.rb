# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.25.0/asc_0.25.0_macOS_arm64"
  version "0.25.0"
  sha256 "f5822c6929b444313d80934c4010ab7c853fd35e4dc2f7e915aacfd8cf70111b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.25.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
