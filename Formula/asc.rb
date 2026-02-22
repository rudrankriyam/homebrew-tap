# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.32.0/asc_0.32.0_macOS_arm64"
  version "0.32.0"
  sha256 "9ad6747f847b52cb19cf6496d2b60cfa64ba182aa1c43952c9325b573b6bb8d4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.32.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
