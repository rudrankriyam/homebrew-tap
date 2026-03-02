# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.36.2/asc_0.36.2_macOS_arm64"
  version "0.36.2"
  sha256 "0eb88183af675a2067066cc7012cb943d554f8eac3d7cbb2a5e07961c6a34a2e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.36.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
