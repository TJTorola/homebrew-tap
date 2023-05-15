cask "kit" do
  version "1.59.1"
  sha256 "90ab6a34c1fef1640d7ec2fa9eab4ad6e0c92ddb2604cafcc58e89d8f24bef07"

  url "https://github.com/johnlindquist/kitapp/releases/download/v#{version}/Kit-macOS-#{version}-arm64.zip"
  name "Kit"
  desc "An open-source kit to optimize your developer workflow"
  homepage "https://www.scriptkit.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kit.app"
end
