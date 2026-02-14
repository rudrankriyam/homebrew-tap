# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.3/asc_0.28.3_macOS_arm64"
  version "0.28.3"
  sha256 "a6b573944ac9e60f582b6d84908c9ac7f77c2010dfb0586cc8ff0464aad3902c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
