# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.34.1/asc_0.34.1_macOS_arm64"
  version "0.34.1"
  sha256 "f72d01fb6d75be87359515b11aa133f66581a0fcb03ecd14f3b6be3e4c5794e5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.34.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
