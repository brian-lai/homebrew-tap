class CleanSlate < Formula
  desc "Interactive CLI for managing per-task workspaces with git worktrees"
  homepage "https://github.com/brian-lai/clean-slate"
  url "https://github.com/brian-lai/clean-slate/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e6712a1d88c14791abccfa96e0cd003e9b317af99ffb24d47cbc0363a3ff594a"
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
