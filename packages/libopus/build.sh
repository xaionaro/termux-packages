TERMUX_PKG_HOMEPAGE=https://www.opus-codec.org/
TERMUX_PKG_DESCRIPTION="Reference implementation of the Opus codec"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.5.2
TERMUX_PKG_SRCURL=https://downloads.xiph.org/releases/opus/opus-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=65c1d2f78b9f2fb20082c38cbe47c951ad5839345876e46941612ee87f9a7ce1
TERMUX_PKG_BREAKS="libopus-dev"
TERMUX_PKG_REPLACES="libopus-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-extra-programs --enable-static"
