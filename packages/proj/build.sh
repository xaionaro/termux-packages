TERMUX_PKG_HOMEPAGE=https://proj.org
TERMUX_PKG_DESCRIPTION="Generic coordinate transformation software"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_VERSION="9.6.0"
TERMUX_PKG_SRCURL=https://github.com/OSGeo/proj.4/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=a846a5bc470b1526aa70bed6b763d63c10282e4c05f364b0f1c89a2ba4da1887
TERMUX_PKG_DEPENDS="libc++, libsqlite, sqlite, libtiff, libcurl"
TERMUX_PKG_BREAKS="proj-dev"
TERMUX_PKG_REPLACES="proj-dev"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_post_get_source() {
	# Do not forget to bump revision of reverse dependencies and rebuild them
	# after SOVERSION is changed.
	local _SOVERSION=25

	local v=$(sed -En 's/^set\(PROJ_SOVERSION\s+([0-9]+).*/\1/p' \
			CMakeLists.txt)
	if [ "${v}" != "${_SOVERSION}" ]; then
		termux_error_exit "SOVERSION guard check failed."
	fi
}
