class Tenantctl < Formula
  desc "Microsoft 365 tenant administration CLI over Microsoft Graph"
  homepage "https://github.com/willstarnet/tenantctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.0/tenantctl-darwin-arm64.tar.gz"
      sha256 "dacff225ffc679e89bf593344ac1931f6306a7f840621fc4eb9d9d24b195e1f9"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.0/tenantctl-darwin-x64.tar.gz"
      sha256 "c9319e81a4478af0b93156989581d2f70304c351fc838d551b09c24348337f6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.0/tenantctl-linux-arm64.tar.gz"
      sha256 "b52a62fdaafac78c7b4c5f22af3291e1e058b6851111dbf6c9b3a18fed79c6c1"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.0/tenantctl-linux-x64-baseline.tar.gz"
      sha256 "7e083b4c4eb7a2bb54edebc46b3534afe271ed737579d15b76880e1f44a1628e"
    end
  end

  def install
    bin.install "tenantctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tenantctl --version")
  end
end
