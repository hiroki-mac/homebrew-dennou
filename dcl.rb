class Dcl < Formula
  desc "This is a Fortran version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage ""
  url "https://www.gfd-dennou.org/library/dcl/dcl-7.1.2.tar.gz"
  version "7.1.2"
  sha256 "01400cc516698e915a51fc5a004fe7ac6c25e470a565fd49f4affed44f3975ca"

  depends_on 'gcc'
  depends_on 'gtk+'
  depends_on 'pkg-config'

  def install
    ENV.deparallelize
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  test do
    system "true"
  end
end
