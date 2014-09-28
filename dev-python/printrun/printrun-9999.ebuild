# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_{6,7} )

inherit git-2 distutils-r1

DESCRIPTION=""
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/kliment/Printrun.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="dev-python/wxpython[${PYTHON_USEDEP}]
		dev-python/psutil[${PYTHON_USEDEP}]
		dev-python/pyserial[${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/pyglet[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
