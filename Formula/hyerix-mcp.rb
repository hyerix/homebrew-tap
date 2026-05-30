class HyerixMcp < Formula
  desc "MCP server for NATS — 14 read-safe stdio tools for AI agents"
  homepage "https://hyerix.ai"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "32bee7d2ce4d7c4b5d7f75b7b3a8c7a910be1bef5627005780b7c491a449b792"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "084367bbfc64e82848da5c8957e1e805b1c2f72f0a37215bddc0a3b8744caff7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49608dd67df4ce7069e0e75d053f68a93a8c3b8388c0229a7f13566fca07dce3"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd35362bcb8725f0821a6be65640527c7b45979479ae2fedc4d6bca16ff3e98c"
    end
  end

  def install
    bin.install "hyerix-mcp"
  end

  test do
    assert_match "hyerix-mcp #{version}", shell_output("#{bin}/hyerix-mcp --version")
  end
end
