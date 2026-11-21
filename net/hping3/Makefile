PORTNAME=	hping3
PORTVERSION=	20051105
CATEGORIES=	net security
MASTER_SITES=	http://www.hping.org/ \
		http://200ok.org/distfiles/hping/

MAINTAINER=	eugen@FreeBSD.org
COMMENT=	Network auditing tool
WWW=		http://www.hping.org/

HAS_CONFIGURE=		yes
CONFIGURE_ARGS=	--no-tcl

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/sbin
	mkdir -p ${STAGEDIR}${PREFIX}/share/man/man8
	${INSTALL_MAN} ${WRKSRC}/docs/${PORTNAME}.8 \
		${STAGEDIR}${PREFIX}/share/man/man8/${PORTNAME}.8

.include <bsd.port.mk>
