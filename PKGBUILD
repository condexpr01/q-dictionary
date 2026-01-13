# Maintainer: condexpr01(Vito Devlin) <condexpr01@outlook.com>
PACKAGER='condexpr01(Vito Devlin) <condexpr01@outlook.com>'
pkgname=power-dict
pkgver=2026.01.14.1
pkgrel=1
pkgdesc='Query chinese and english words'
arch=('any')
url='https://github.com/condexpr01/power-dict'

provides=('q')

license=('MIT')
depends=('lua')
source=('wordlist.lua')
sha256sums=('SKIP')

prefix=${PREFIX:-/usr}

package() {
	install -Dm755 "$srcdir/wordlist.lua" \
	"$pkgdir${prefix}/lib/${pkgname}/wordlist.lua"

	install -dm755 "$pkgdir${prefix}/bin"
	ln -s "../lib/${pkgname}/wordlist.lua" "$pkgdir${prefix}/bin/q"
}
