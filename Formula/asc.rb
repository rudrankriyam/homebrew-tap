# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.6/asc_0.28.6_macOS_arm64"
  version "0.28.6"
  sha256 "6cb2cdbc35601a166f3438e81cefe6295de4dc39b439783bb23369124f89b379"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.6_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
