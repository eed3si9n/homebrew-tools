class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"
  depends_on "openssl"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.6.0-Mac_OS_X-x86_64.zip"
  version "0.6.0"
  sha256 "d937de1253eebbfd6ceefcfcd815823357f911598a9ecf274872a8edfcdfb660"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
