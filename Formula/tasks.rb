class GoprojectsTodoList < Formula
  desc "CLI application for managing tasks in the terminal"
  homepage "https://github.com/hra42/goprojects-todo-list"
  url "https://github.com/hra42/goprojects-todo-list/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "208adfd542a1e43c5c803e6b28af58ef5b49bfeccb57730433cfc8f88a537023"
  license "Unlicense"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Usage: tasks <command> [arguments]", shell_output("#{bin}/tasks")
  end
end
