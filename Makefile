# Created by: alexander naumochkin <alexander.naumochkin@gmail.com>
# $FreeBSD$

PORTNAME=	rgxg
DISTVERSION=	0.1.2
CATEGORIES=	devel
MASTER_SITES=	https://github.com/${PORTNAME}/${PORTNAME}/releases/download/v${DISTVERSION}/

MAINTAINER=	alexander.naumochkin@gmail.com
COMMENT=	ReGular eXpression Generator

LICENSE=	ZLIB

BUILD_DEPENDS=	m4:devel/m4

USES=		autoreconf libtool

GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip

pre-configure:
	@echo "m4_define([_PACKAGE_VERSION], [${DISTVERSION}])" > ${WRKSRC}/m4/version.m4

.include <bsd.port.mk>
