class August < Formula
  desc "August Cyber defensive security CLI: API/GraphQL/MCP discovery, BYOK autonomous testing, auto-patching, and SARIF CI gates"
  homepage "https://august.so"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.5.0/august-aarch64-apple-darwin.tar.gz"
      sha256 "e201c62de2d4881a5abcf9f49249a1080ba8c96128df1523c2af92318c058790"
    else
      url "https://api.august.so/releases/cli/v0.5.0/august-x86_64-apple-darwin.tar.gz"
      sha256 "8c6c25d02bcc3e0ce4c5beec09f0f5eb695b19312dda3d9e2efd5008d75838dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.august.so/releases/cli/v0.5.0/august-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22da0d753e88a275e482a0e0d83a523a9fe6f624cd6641435a77c0ca088f4155"
    else
      url "https://api.august.so/releases/cli/v0.5.0/august-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d36848b6b5a4602772777d384aa4ec9125e3563f2ec2b9f25786b4b2bf516c6f"
    end
  end

  def install
    bin.install "august"
  end

  test do
    assert_match "august 0.5.0", shell_output("#{bin}/august --version")
  end
end
