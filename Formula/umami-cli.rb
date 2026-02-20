class UmamiCli < Formula
  desc "CLI for self-hosted Umami analytics using the Umami API"
  homepage "https://github.com/yborunov/umami-cli"
  url "https://github.com/yborunov/umami-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ee9d7fd75d3fa0ff798beeb69cc65b9ab0f1e369ac01eed81797a4fb0f32eb1f"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/yborunov/umami-cli/internal/cmd.version=#{version}
      -X github.com/yborunov/umami-cli/internal/cmd.commit=homebrew
      -X github.com/yborunov/umami-cli/internal/cmd.date=#{time.rfc3339}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/umami"
  end

  test do
    assert_match "umami version #{version}", shell_output("#{bin}/umami version")
  end
end
