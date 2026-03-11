# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.39.0/asc_0.39.0_macOS_arm64"
  version "0.39.0"
  sha256 "409a8f711493d20ecbf3763a85c048d1aba888fff22b122875e2d15603c4571f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.39.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
