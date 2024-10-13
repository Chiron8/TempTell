# Maintainer: Chiron H
pkgname=TempTell
pkgver=1.0
pkgrel=1
pkgdesc="A script to display CPU temperature with customizable options"
arch=('any')
url="https://github.com/Chiron8/TempTell"
license=('MIT')
depends=('lm_sensors')
source=("cpu-temp.sh" "LICENSE")
sha256sums=('SKIP' 'SKIP')

package() {
    install -Dm755 "$srcdir/cpu-temp.sh" "$pkgdir/usr/bin/TempTell"
    install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

