class August < Formula
  desc "Autonomous offensive security CLI for APIs, web apps, and MCP servers"
  homepage "https://august.so"
  version "0.3.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.3/august-aarch64-apple-darwin.tar.gz"
      sha256 "66ab452fb197a953d71df9a56374721cb558deea777fa5dd6694c09119d2109d"
    else
      url "https://api.august.so/releases/cli/v0.3.3/august-x86_64-apple-darwin.tar.gz"
      sha256 "09149c785e650705e37699b39fd0208d9307837914dc3d0124346dd4109a0e42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.3/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d301810a68697186822472b46a4fd967cde484821a2e0d33d276d2b5edc9c47f"
    else
      url "https://api.august.so/releases/cli/v0.3.3/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "230608cbafc537a1aa36d63a7aed1a6a1938a9c047e055132087a574d14a0a2f"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august", shell_output("#{bin}/august --version")
  end
end
