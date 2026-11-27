class August < Formula
  desc "Autonomous offensive security CLI for APIs, web apps, and MCP servers"
  homepage "https://august.so"
  version "0.3.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.2/august-aarch64-apple-darwin.tar.gz"
      sha256 "53e340974100e86a39d836d06716cc68063987354cc83e418f2ae384f5a4190c"
    else
      url "https://api.august.so/releases/cli/v0.3.2/august-x86_64-apple-darwin.tar.gz"
      sha256 "f3ccc63a28fc61b89bb8f719cce8272504fe7f7f1363325d8f12d4c7562c3df2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.3.2/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e56971299822d7c37f6109a420ac3ba1702748a0d6759a96f386bd21edadda63"
    else
      url "https://api.august.so/releases/cli/v0.3.2/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6881029c1fcf6cc65a754141f62f50bb25f76752b7418bb271dd40a24c6bdc4d"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august", shell_output("#{bin}/august --version")
  end
end
