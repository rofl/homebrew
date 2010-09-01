require 'formula'

class Dcled <Formula
  url 'http://www.jeffrika.com/~malakai/dcled/dcled-1.8.tgz'
  homepage 'http://www.jeffrika.com/~malakai/dcled/index.html'
  md5 '1f0c32964ff521c2f39156cca5ef7a29'

  depends_on 'libhid'

  def install
    system "make && make install"
  end
end
