# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/chardet/chardet-2.2.1.ebuild,v 1.2 2014/01/12 00:25:27 floppym Exp $

EAPI=5
PYTHON_COMPAT=( python3_3 )

inherit distutils-r1

DESCRIPTION="Universal encoding detector"
HOMEPAGE="https://github.com/chardet/chardet http://pypi.python.org/pypi/chardet"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~mips ~sparc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos ~x86-macos"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
