# Maintainer: Chiron H
pkgname=temptell
pkgver=1.0
pkgrel=1
pkgdesc="A script to display CPU temperature with customizable options"
arch=('any')
url="https://github.com/Chiron8/TempTell"
license=('MIT')
depends=('lm_sensors')
source=("$pkgname-$pkgver.tar.gz")
sha256sums=('SKIP')

package() {
    install -Dm755 "$srcdir/cpu-temp.sh" "$pkgdir/usr/bin/TempTell"
    install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
