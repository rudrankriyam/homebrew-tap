# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.29.0/asc_0.29.0_macOS_arm64"
  version "0.29.0"
  sha256 "7a5213f114aa86fede6b464b05d2cd5207cd1e49b8e38457d00a4485b299124c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.29.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
