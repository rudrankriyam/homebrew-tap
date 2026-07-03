# typed: false
# frozen_string_literal: true

class Xceval < Formula
  desc "Run and inspect Apple Evaluations workflows from the command-line"
  homepage "https://github.com/rudrankriyam/Evaluations-Framework-CLI"
  url "https://github.com/rudrankriyam/Evaluations-Framework-CLI/releases/download/0.2.1/xceval_0.2.1_macOS_universal"
  version "0.2.1"
  sha256 "bfb5c0cb702a95a0af05e1c854a63b80c33d5f152c1f2d006915b91b9a854f27"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "xceval_0.2.1_macOS_universal" => "xceval"
  end

  test do
    assert_match "Apple Evaluations", shell_output("#{bin}/xceval --help")
  end
end
