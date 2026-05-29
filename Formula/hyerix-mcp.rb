class HyerixMcp < Formula
  desc "MCP server for NATS — 14 read-safe stdio tools for AI agents"
  homepage "https://hyerix.ai"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b3ea2818509d1f5b3c583020b0e1e38e8cee448147772f4c83a97312cdd211cb"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "23f9c63386ef3ec975189621d2dea005837b3f39520e5ea2bb7baacea6ab26d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d14650f6b2adbbf3cda87d5f39af0def6b4cac6f209b365bf366551c2570bc95"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.1/hyerix-mcp-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46f4835b550d75c2a3a037ebfa04ef4825b946ac5f69df76ccc7034713094af5"
    end
  end

  def install
    bin.install "hyerix-mcp"
  end

  test do
    assert_match "hyerix-mcp #{version}", shell_output("#{bin}/hyerix-mcp --version")
  end
end
