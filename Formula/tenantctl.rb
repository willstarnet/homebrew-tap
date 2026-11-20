class Tenantctl < Formula
  desc "Microsoft 365 tenant administration CLI over Microsoft Graph"
  homepage "https://github.com/willstarnet/tenantctl"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.4/tenantctl-darwin-arm64.tar.gz"
      sha256 "53d82b66c27aae245f9c2e01f9f65e1cd143ab4103f296a3021f5e93247f244e"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.4/tenantctl-darwin-x64.tar.gz"
      sha256 "d1e2e35a15d172b45044349e5f46bc1af1ff6c3f76dfda027074985516483803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.4/tenantctl-linux-arm64.tar.gz"
      sha256 "bdf2eb30bf4aad5574c2d4406375ea4b4dde1b9b843c1cae6e176117c19225f6"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.4/tenantctl-linux-x64-baseline.tar.gz"
      sha256 "67cc60c8a31fe731f9b3a7c31591ee2b13ef5aaa85c5bb28e45eab33b7779c56"
    end
  end

  def install
    bin.install "tenantctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tenantctl --version")
  end
end
