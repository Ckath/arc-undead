pkgname=gtk-theme-arc-undead-git
_pkgname=arc-undead
_pkgauthor=undeadleech
pkgver=659.4b6114f
pkgrel=1
pkgdesc="A black/red modification of the original arc theme. Latest commit from the master branch on github."
arch=('any')
url="https://github.com/chrisduerr/${_pkgname}"
license=('GPL3')
depends=('gtk3')
makedepends=('git')
source=(${_pkgname}::"git+https://github.com/chrisduerr/${_pkgname}.git")
sha256sums=('SKIP')

pkgver() {
	cd "${srcdir}/${_pkgname}"
	echo "$(git rev-list --count HEAD).$(git rev-parse --short HEAD)"
}

build() {
	cd "${srcdir}/${_pkgname}"
	./autogen.sh --prefix=/usr
}

package() {
	make -C "${srcdir}/${_pkgname}" DESTDIR="${pkgdir}" install
}
