class UsageMon < Formula
  include Language::Python::Shebang

  desc "Monitor token usage, cost and limits of Claude Code and Codex"
  homepage "https://github.com/yolkmonday/usage-mon"
  url "https://github.com/yolkmonday/usage-mon/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "058e1b2a07cffbb06a0d37af35db31a95d15304de61c3b49e718a8a5b81b96c5"
  license "MIT"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "usage_mon.py"
    bin.install "usage_mon.py" => "usage-mon"
  end

  test do
    ENV["HOME"] = testpath
    output = shell_output("#{bin}/usage-mon --json --no-limit")
    assert_match "\"claude\"", output
    assert_match "\"codex\"", output
  end
end
