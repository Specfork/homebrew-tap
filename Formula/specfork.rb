class Specfork < Formula
  desc "Find, compose and build from app specs"
  homepage "https://specfork.dev"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.2/specfork_darwin_arm64.tar.gz"
      sha256 "22d8019272f6b980695e8e49216b6c10570d9b6a0474b3683119283f53d54f4f"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.2/specfork_darwin_amd64.tar.gz"
      sha256 "a890d79c99759daa757c9daaba752dfce1a5207651cfe942ffad630ccc7fc2c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.2/specfork_linux_arm64.tar.gz"
      sha256 "8a4003a9425de3a78adbf0c99fb4d4042c781847ca3c50ca882a1c7571ea66ca"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.2/specfork_linux_amd64.tar.gz"
      sha256 "93ba694b13e71c2d9e2d8a3bbb7af18b47de29798dd730ffe9440983773ae477"
    end
  end

  def install
    bin.install "specfork"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specfork --version")
  end
end
