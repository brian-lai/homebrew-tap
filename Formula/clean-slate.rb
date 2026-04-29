class CleanSlate < Formula
  desc "Interactive CLI for managing per-task workspaces with git worktrees"
  homepage "https://github.com/brian-lai/clean-slate"
  url "https://github.com/brian-lai/clean-slate/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2d3b33061fa3975c7c2ab86c5a1c2b320d1a4140bfaa1d3497d77f17d5d36d19"
  license "MIT"
  head "https://github.com/brian-lai/clean-slate.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/brian-lai/clean-slate/internal/version.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"cs")

    generate_completions_from_executable(bin/"cs", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cs --version")
    assert_match "Usage", shell_output("#{bin}/cs --help")
  end
end
