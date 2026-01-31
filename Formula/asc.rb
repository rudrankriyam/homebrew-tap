# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.22.1/asc-darwin-arm64"
  version "0.22.1"
  sha256 "c05c186276b23af841024242e114398df8e564b02a5f6476c6979d8f9b9954fb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc-darwin-arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
