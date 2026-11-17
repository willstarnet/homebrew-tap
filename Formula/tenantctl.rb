class Tenantctl < Formula
  desc "Microsoft 365 tenant administration CLI over Microsoft Graph"
  homepage "https://github.com/willstarnet/tenantctl"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.3/tenantctl-darwin-arm64.tar.gz"
      sha256 "a01b27a80c413caa33ab8f808f41b946f40d5ce2c23c679e5a13322da2a122cc"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.3/tenantctl-darwin-x64.tar.gz"
      sha256 "385c3e603bd0e65816ebfae7d376f4ca5e5fd59d7ee7b7127efdb4ebd16014fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.3/tenantctl-linux-arm64.tar.gz"
      sha256 "a1f5c5e8406f456a70d444ec7c51d2baa0deed15dd25fc53465a335b2b31eb0e"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.3/tenantctl-linux-x64-baseline.tar.gz"
      sha256 "a881589fea43b5aab03720b8129f125e4eac4bc73d26823abfb35d8853213b11"
    end
  end

  def install
    bin.install "tenantctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tenantctl --version")
  end
end
