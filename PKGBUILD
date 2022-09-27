# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <youremail@domain.com>
pkgname=python2-bin
_pkgname=python2
pkgver=2.7.18
pkgrel=1
epoch=
pkgdesc="Python2 binaries for x86_64"
arch=('x86_64')
url="https://python.org"
license=('PSF')
groups=()
depends=()
makedepends=()
checkdepends=()
optdepends=()
provides=('python2')
conflicts=('python<3')
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname-$pkgver.tar.gz"
        "$pkgname-$pkgver.patch")
noextract=()
md5sums=()
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"
	patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
}

build() {
	cd "$pkgname-$pkgver"
	./configure --prefix=/usr
	make
}

check() {
	cd "$pkgname-$pkgver"
	make -k check
}

package() {
	cd "$pkgname-$pkgver"
	make DESTDIR="$pkgdir/" install
	# fix conflicts with python
	mv "${pkgdir}"/usr/bin/idle{,2}
	mv "${pkgdir}"/usr/bin/pydoc{,2}
	mv "${pkgdir}"/usr/bin/2to3{,-2.7}
	install -Dm644 LICENSE "${pkgdir}"/usr/share/licenses/${_pkgname}/LICENSE
}
