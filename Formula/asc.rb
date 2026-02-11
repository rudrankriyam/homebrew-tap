# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.3/asc_0.26.3_macOS_arm64"
  version "0.26.3"
  sha256 "0ad9c524570198f41262cc26b375684325a228c0ad792a38dfab7f4cdc8a963c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
