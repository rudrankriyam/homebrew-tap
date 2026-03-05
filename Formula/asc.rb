# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.37.0/asc_0.37.0_macOS_arm64"
  version "0.37.0"
  sha256 "97b4c91243403de1c1c839065df1709370d1e0ae92957f615cb06c7daa10a6d8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.37.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
