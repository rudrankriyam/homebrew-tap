# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.12.1/asc-darwin-arm64"
  sha256 "ae93d5758c7754bb6b3448a32448148f7830df9f52b5313b6c84ec519e3b40b7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc-darwin-arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
