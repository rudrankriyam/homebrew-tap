# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.35.3/asc_0.35.3_macOS_arm64"
  version "0.35.3"
  sha256 "de91590dc7537f2c3faca44d503f8ae3568fa03088ba5b14882596dcb02a15a0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.35.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
