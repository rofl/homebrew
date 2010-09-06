require 'formula'

class Dcled <Formula
  url 'http://www.jeffrika.com/~malakai/dcled/dcled-1.9.tgz'
  homepage 'http://www.jeffrika.com/~malakai/dcled/index.html'
  md5 '7cffd6585a5d355626d60e2127599dd0'

  depends_on 'libhid'

  def install
    inreplace 'makefile' do |s|
      s.change_make_var! 'INSTALLDIR', prefix + 'bin'
      s.change_make_var! 'CC', ENV['CC']
      s.change_make_var! 'CFLAGS', ENV['CFLAGS'] + " -I#{HOMEBREW_PREFIX}/include"
      if ENV['LDFLAGS'] != nil
         s.change_make_var! 'LDFLAGS', ENV['LDFLAGS'] + ' -lm -lhid'
      end
    end

    system "make && make install"
  end
end
