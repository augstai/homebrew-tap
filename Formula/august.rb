class August < Formula
  desc "Autonomous offensive security CLI for APIs, web apps, and MCP servers"
  homepage "https://august.so"
  version "0.3.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.1/august-aarch64-apple-darwin.tar.gz"
      sha256 "43cabe48feb8b67e139c39f8f835ebbc22b808e64b119554b0dbe7fefe152004"
    else
      url "https://api.august.so/releases/cli/v0.3.1/august-x86_64-apple-darwin.tar.gz"
      sha256 "fc4fd1452d1ff41f4ebfb4ae43c92948676a1093d475eb125a50eacf90c83894"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.1/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2623b66740c9d44f583917d0b33b37cf796095ef5426e32b0cc61aea49993125"
    else
      url "https://api.august.so/releases/cli/v0.3.1/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a12e2a28c027c84ae0816e61263fd3710270ccc6b1c69849e36f9b37cb48787"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august", shell_output("#{bin}/august --version")
  end
end
