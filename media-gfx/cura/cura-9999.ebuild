# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/uniconvertor/uniconvertor-1.1.5-r1.ebuild,v 1.3 2013/12/25 09:37:46 maekke Exp $

EAPI="5"

PYTHON_COMPAT=( python2_{6,7} )

inherit git-2 distutils-r1

DESCRIPTION="3d model slicer"
HOMEPAGE="https://github.com/daid/Cura"
EGIT_REPO_URI="https://github.com/daid/Cura"

KEYWORDS="~amd64 ~arm ~x86"
SLOT="0"
LICENSE="GPL-2"
LINGUAS=" "
IUSE=""
