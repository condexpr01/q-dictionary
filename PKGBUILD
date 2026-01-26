# Maintainer: condexpr01(Vito Devlin) <condexpr01@outlook.com>
PACKAGER='condexpr01(Vito Devlin) <condexpr01@outlook.com>'
pkgname=q-dictionary
pkgver=2026.01.26.1
pkgrel=1
pkgdesc='Query chinese and english words in terminal'
arch=('any')
url='https://github.com/condexpr01/q-dictionary'

provides=('q')

license=('MIT')
#depends=('grep' 'coreutils' 'pandoc')
source=('wordlist' 'q' 'LICENSE.txt' 'readme.md')
sha256sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')

prefix=${PREFIX:-/usr}

package() {

	pandoc -s -t man "$srcdir/readme.md" -o "$srcdir/readme.1"
	gzip -9c "$srcdir/readme.1" > "$srcdir/${pkgname}.gz"
	install -Dm644 "$srcdir/${pkgname}.gz" "$pkgdir${prefix}/share/man/man1/${pkgname}.1.gz"

	install -Dm644 LICENSE.txt -t "${pkgdir}${prefix}/share/licenses/${pkgname}"

	install -Dm755 -t "${pkgdir}${prefix}/bin" q
	install -Dm644 wordlist -t "${pkgdir}${prefix}/share/q-dictionary"

}
