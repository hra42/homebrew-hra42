class GoprojectsTodoList < Formula
  desc "CLI application for managing tasks in the terminal"
  homepage "https://github.com/hra42/goprojects-todo-list"
  url "https://github.com/hra42/goprojects-todo-list/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9f4831b63deecd7985e982a83eedf270b0ec8c03b07955be1512432188ead9c4"
  license "Unlicense"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Usage: tasks <command> [arguments]", shell_output("#{bin}/tasks")
  end
end
