class HyerixNatsfixture < Formula
  desc "Single-binary, language-neutral CI fixture for NATS-dependent code"
  homepage "https://hyerix.ai"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyerix/hyerix-natsfixture/releases/download/v0.1.0/hyerix-natsfixture-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d35c3dab7710bb5c774d9844f42a5453fc80092c11852429af56f11b053df777"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-natsfixture/releases/download/v0.1.0/hyerix-natsfixture-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "be3415d8ce45074724cc4474316d95c0bbe23c98e7ab69ad91e97c5915ecd1db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyerix/hyerix-natsfixture/releases/download/v0.1.0/hyerix-natsfixture-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bdbc80ee4a25af029edb30e5789554a4fc5f634b8ef7049245401b13ef884c6"
    end
    on_intel do
      url "https://github.com/hyerix/hyerix-natsfixture/releases/download/v0.1.0/hyerix-natsfixture-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dc70c0c7729777e63e7f4d0807993b01da13f55c5a8489443adecef85968a18"
    end
  end

  def install
    libexec.install "nats-server"
    bin.install "hyerix-natsfixture"
    bin.install_symlink libexec/"nats-server"
  end

  test do
    assert_match "hyerix-natsfixture #{version}", shell_output("#{bin}/hyerix-natsfixture --version")
  end
end
