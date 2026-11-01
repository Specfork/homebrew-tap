class Specfork < Formula
  desc "Find, compose and build from app specs"
  homepage "https://specfork.dev"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.1/specfork_darwin_arm64.tar.gz"
      sha256 "5821911d82754bda70d3ead9f1e5d797bdb96ecea164e86230fffa62e2d64e4b"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.1/specfork_darwin_amd64.tar.gz"
      sha256 "4b7fc723382525ed97b6b53fcfc9e37a7436e1f35a14d096e74830395152e860"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.1/specfork_linux_arm64.tar.gz"
      sha256 "646c5aa4429eee03d0c2e166db25f97bb1e2ca129e88f03a4789116a723a205b"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.1/specfork_linux_amd64.tar.gz"
      sha256 "158b299c5b2e28950f56392d577c72aebfb6ba4e7d0f8256a8bd615345451a10"
    end
  end

  def install
    bin.install "specfork"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specfork --version")
  end
end
