# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.10/asc_0.28.10_macOS_arm64"
  version "0.28.10"
  sha256 "75851e269d0abedda394f255c83a98cbeda7e583a7708138499a84d3aab6ee21"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.10_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
