CFLAGS=-I/opt/vc/include -I/opt/vc/include/interface/vmcs_host/linux -I/opt/vc/include/interface/vcos/pthreads `pkg-config --cflags freetype2` -g -Wall -fPIC
LIBS=-L/opt/vc/lib -lGLESv2 -lEGL -ljpeg `pkg-config --libs freetype2`
all:	libshapes.so

clean:
	rm -f *.o *.so
	indent -linux -c 60 -brf -l 132 libshapes.c oglinit.c shapes.h

libshapes.so: oglinit.o libshapes.o
	gcc -shared -o libshapes.so oglinit.o libshapes.o

install:
	install -m 755 -p libshapes.so /usr/lib/libshapes.so.1.0.0
	strip --strip-unneeded /usr/lib/libshapes.so.1.0.0
	ln -f -s /usr/lib/libshapes.so.1.0.0 /usr/lib/libshapes.so
	ln -f -s /usr/lib/libshapes.so.1.0.0 /usr/lib/libshapes.so.1
	ln -f -s /usr/lib/libshapes.so.1.0.0 /usr/lib/libshapes.so.1.0
	install -m 644 -p shapes.h /usr/include/

uninstall:
	rm -f /usr/lib/libshapes.so.1.0.0 /usr/lib/libshapes.so.1.0 /usr/lib/libshapes.so.1 /usr/lib/libshapes.so
	rm -f /usr/include/shapes.h
