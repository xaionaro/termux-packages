TERMUX_PKG_HOMEPAGE=https://www.libssh.org/
TERMUX_PKG_DESCRIPTION="Tiny C SSH library"
TERMUX_PKG_LICENSE="LGPL-2.1, BSD 2-Clause"
TERMUX_PKG_LICENSE_FILE="BSD, COPYING"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.11.1"
TERMUX_PKG_SRCURL=https://www.libssh.org/files/${TERMUX_PKG_VERSION%.*}/libssh-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=14b7dcc72e91e08151c58b981a7b570ab2663f630e7d2837645d5a9c612c1b79
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openssl, zlib"
TERMUX_PKG_BREAKS="libssh-dev"
TERMUX_PKG_REPLACES="libssh-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DHAVE_ARGP_H=OFF
-DWITH_GSSAPI=OFF
-DENABLE_STATIC=ON
"

termux_step_pre_configure() {
	CPPFLAGS+=" -D__USE_GNU"
}
