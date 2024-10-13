# Maintainer: Chiron H
pkgname=TempTell
pkgver=1.0
pkgrel=1
pkgdesc="A script to display CPU temperature with customizable options"
arch=('any')
url="https://github.com/Chiron8/TempTell"
license=('MIT')
depends=('lm_sensors')
source=("temptell-1.0.tar.gz")
sha256sums=('SKIP')

package() {
    cd "$srcdir/TempTell" # Navigate into the tarball's directory
    install -Dm755 "cpu-temp.sh" "$pkgdir/usr/bin/TempTell"
    install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
    install -Dm644 "README.md" "$pkgdir/usr/share/doc/$pkgname/README.md"
}
