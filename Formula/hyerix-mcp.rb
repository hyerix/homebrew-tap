class HyerixMcp < Formula
  desc "MCP server for NATS — 14 read-safe stdio tools for AI agents"
  homepage "https://hyerix.ai"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.0/hyerix-mcp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "019a543cf36c9168b3bacdf11efba0a3ad6511aa81a1cb4dc58966271f8f303d"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.0/hyerix-mcp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "57a939648f89842c89b3933e169e995b1446c6bf84e0131301ca3feb849ae1b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.0/hyerix-mcp-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d928e903e710afa03e4b6df375fe61bc4c4906d25844f7088dc018425f8447ae"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-mcp/releases/download/v0.1.0/hyerix-mcp-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87ccc584174b3ed32d13fdd5f5690dc6fea0a1711819d9a82990bbc885f0c1f7"
    end
  end

  def install
    bin.install "hyerix-mcp"
  end

  test do
    assert_match "hyerix-mcp #{version}", shell_output("#{bin}/hyerix-mcp --version")
  end
end
