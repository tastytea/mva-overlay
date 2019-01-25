# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VCS="git"
LUA_COMPAT="luajit2"
GITHUB_A="bungle"
GITHUB_PN="lua-${PN}"

inherit lua

DESCRIPTION="LuaJIT FFI-based Random Library for OpenResty"
HOMEPAGE="https://github.com/bungle/lua-resty-random"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	www-servers/nginx:*[nginx_modules_http_lua,ssl]
	dev-libs/openssl:*
"
DEPEND="
	${RDEPEND}
"

DOCS=(README.md)

each_lua_install() {
	dolua_jit lib/resty
}
