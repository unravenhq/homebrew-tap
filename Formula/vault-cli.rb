class VaultCli < Formula
  desc "Command-line interface for Unraven Vault"
  homepage "https://www.npmjs.com/package/@unraven/vault-cli"
  url "https://registry.npmjs.org/@unraven/vault-cli/-/vault-cli-1.0.5.tgz"
  sha256 "a0c88530cda258bccd76ae4b38bacf9f8c5888303a81bda50abb83d39e262a0f"
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
