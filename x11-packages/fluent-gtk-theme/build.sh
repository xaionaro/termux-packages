TERMUX_PKG_HOMEPAGE=https://github.com/vinceliuice/Fluent-gtk-theme
TERMUX_PKG_DESCRIPTION="Fluent is a Fluent design theme for GNOME/GTK based desktop environments"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@Yisus7u7"
TERMUX_PKG_VERSION="2024.06.12"
TERMUX_PKG_SRCURL=https://github.com/vinceliuice/Fluent-gtk-theme/archive/refs/tags/${TERMUX_PKG_VERSION//./-}.tar.gz
TERMUX_PKG_SHA256=9a3aaf81712e8c66c5b1099dff02ebfe960f0be71a9055ce412650aa4076d515
TERMUX_PKG_DEPENDS="gnome-themes-extra, gtk2-engines-murrine, gtk3"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=false

termux_step_make_install(){
	./install.sh -d ${TERMUX_PREFIX}/share/themes
}
