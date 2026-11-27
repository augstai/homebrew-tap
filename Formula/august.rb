class August < Formula
  desc "Autonomous offensive security CLI for APIs, web apps, and MCP servers"
  homepage "https://august.so"
  version "0.4.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.4.0/august-aarch64-apple-darwin.tar.gz"
      sha256 "6f4aad430463de6c5d9092864d1221d0ea1ea2513c958983ad909bb9415f1ea1"
    else
      url "https://api.august.so/releases/cli/v0.4.0/august-x86_64-apple-darwin.tar.gz"
      sha256 "f2f3bd3869fbeadc8462afc1d2dad47c6b78166117c868d68ced5dcd786bd59b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.4.0/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea5162c92979e61c168d306b286b1175e1cbce05212061928a5ce0090129f573"
    else
      url "https://api.august.so/releases/cli/v0.4.0/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91ca77673f07975b3d960253cf461e29896b7438d1b200413d50172a19a70989"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august", shell_output("#{bin}/august --version")
  end
end
