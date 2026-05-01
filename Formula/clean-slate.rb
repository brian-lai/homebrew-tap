class CleanSlate < Formula
  desc "Interactive CLI for managing per-task workspaces with git worktrees"
  homepage "https://github.com/brian-lai/clean-slate"
  url "https://github.com/brian-lai/clean-slate/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c2a8243b82d8b3a17ec62b4836c44e77ad7c173312652e5a2922fd7cef3b204e"
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
