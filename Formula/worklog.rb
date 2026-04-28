class Worklog < Formula
  desc "Local-only, always-on productivity tracker for macOS"
  homepage "https://github.com/yborunov/worklog"
  url "https://github.com/yborunov/worklog/releases/download/v0.1.0/worklog-0.1.0-macos-arm64.tar.gz"
  sha256 "8d6b6f179f0fda0404f3f5100fc012d267ec8e780f1a5183cc2f8a90f369a886"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "worklog"
  end

  test do
    output = shell_output("#{bin}/worklog --help")
    assert_match "macOS productivity tracker", output
  end
end
