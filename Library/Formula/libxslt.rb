require 'formula'

class Libxslt <Formula
  url 'ftp://xmlsoft.org/libxml2/libxslt-1.1.26.tar.gz'
  homepage 'http://xmlsoft.org'
  md5 'e61d0364a30146aaa3001296f853b2b9'

  depends_on 'libxml2'

  def install
    puts 
    args = ["--with-libxml-prefix=#{Formula.factory('libxml2').prefix}", "--prefix=#{prefix}"]

    system "./configure", *args
    system "make"
    ENV.j1
    system "make install"
  end
end
