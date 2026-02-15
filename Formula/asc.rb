# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.5/asc_0.28.5_macOS_arm64"
  version "0.28.5"
  sha256 "c7a0e2143eb44f6f138280f95fc0191b5cbb863288a75258bea5f02fd738e064"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.5_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
