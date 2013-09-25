# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit toolchain-funcs

DESCRIPTION="r5u87x userspace firmware loader"
HOMEPAGE="http://www.bitbucket.org/ahixon/r5u87x/"
SRC_URI="https://bitbucket.org/ahixon/r5u87x/get/default.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/libusb
	dev-libs/glib:2
	!media-video/r5u870"
RDEPEND=""

S="${WORKDIR}"/`ls ${WORKDIR}`

src_prepare() {
	S="${WORKDIR}"/$(ls .)
	cd ${S}
	sed -e "s#\(^PREFIX=\).*#\1${PREFIX}#" \
		-e "s#\(^libdir=/\).*#\1$(get_libdir)#" \
		-e "s#\(^firmdir=.*\/\)r5u87x/ucode#\1firmware#" \
		-i Makefile || die "Fixing Makefile failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake failed"
}

pkg_postinst() {
	einfo "Reloading firmware if necessary..."
	"${PREFIX}/sbin/r5u87x-loader" --reload
}
