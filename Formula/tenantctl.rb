class Tenantctl < Formula
  desc "Microsoft 365 tenant administration CLI over Microsoft Graph"
  homepage "https://github.com/willstarnet/tenantctl"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.2/tenantctl-darwin-arm64.tar.gz"
      sha256 "d972d3f622360eaf5a45296276eabc85b37909ff470f4cab84d6ef0d8d630427"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.2/tenantctl-darwin-x64.tar.gz"
      sha256 "e7bf26735fb0d5a6ddadbb1fe7216bcf6125d142721bbe541dbb720558260a26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.2/tenantctl-linux-arm64.tar.gz"
      sha256 "054820271ac3c72cf050286d2a89ef1422ba8373c969032dc3e4de3c8ecde7dd"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.2/tenantctl-linux-x64-baseline.tar.gz"
      sha256 "d9301bdd5ab61cd444dc0f69d71ba9377d1b1ddfd3dc0ea8448e9c8ef2dd8c97"
    end
  end

  def install
    bin.install "tenantctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tenantctl --version")
  end
end
