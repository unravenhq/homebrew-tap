class VaultCli < Formula
  desc "Command-line interface for Unraven Vault"
  homepage "https://www.npmjs.com/package/@unraven/vault-cli"
  url "https://registry.npmjs.org/@unraven/vault-cli/-/vault-cli-1.0.2.tgz"
  sha256 "cccdb9a6d422ca4526aaa4baec3a5ae4074e8c15846cab100919e373907f852a"
  license "MIT"

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    (bin/"vault").write_env_script libexec/"bin/vault", PATH: "#{formula_opt_bin("node@24")}:$PATH"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vault --version")
  end
end
