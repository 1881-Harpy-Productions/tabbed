# tabbed version
VERSION = 0.6

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

#X11INC = /usr/X11R6/include
#X11LIB = /usr/X11R6/lib
# Freebsd
X11INC = /usr/local/include
X11LIB = /usr/local/lib
# freetype
FREETYPELIBS = -lfontconfig -lXft
#FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I. -I/usr/include -I$(X11INC) -I${FREETYPEINC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 ${FREETYPELIBS}

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE #-D_FORTIFY_SOURCE=2 -fstack-protector-strong -fPIE -fPIC
CFLAGS = -std=c99 -pedantic -Wall -Os -march=native -mtune=native ${INCS} ${CPPFLAGS}
LDFLAGS = -s ${LIBS} #-Wl,-z,relro,-z,now

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = clang
