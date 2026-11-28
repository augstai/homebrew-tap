class August < Formula
  desc "August Cyber defensive security CLI: API/GraphQL/MCP discovery, BYOK autonomous testing, auto-patching, and SARIF CI gates"
  homepage "https://august.so"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.6.0/august-aarch64-apple-darwin.tar.gz"
      sha256 "bdb7cad452407efbd8e6cd5bd94998c82f0313d3428ae1b3fc6af0a347d3a8b7"
    else
      url "https://api.august.so/releases/cli/v0.6.0/august-x86_64-apple-darwin.tar.gz"
      sha256 "7b7ed853e0bb423444d2cebcffb49cf4979a583b9ea35f36c2953175ee037fc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.6.0/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6d1c8fd4327606a42b85e109eb2150ce1ec00c8d78481ca72c0d7b6da9fd89c"
    else
      url "https://api.august.so/releases/cli/v0.6.0/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "531cb4450954f5638a97d0febcae969f56ccfa3f7eab6a99e9f28d90d5cc8211"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august 0.6.0", shell_output("#{bin}/august --version")
  end
end
