CFLAGS=-I/opt/vc/include -I/opt/vc/include/interface/vmcs_host/linux -I/opt/vc/include/interface/vcos/pthreads -I.. -g `pkg-config --cflags freetype2`
LIBS=-L/opt/vc/lib -lGLESv2 -lEGL -lbcm_host -lpthread  -ljpeg `pkg-config --libs freetype2`

all: shapedemo hellovg mouse-hellovg particles clip

shapedemo:	shapedemo.o ../libshapes.o ../oglinit.o
	gcc -Wall $(LIBS) -o shapedemo shapedemo.o ../libshapes.o ../oglinit.o

test:	shapedemo
	./shapedemo demo 5

hellovg:	hellovg.o ../libshapes.o ../oglinit.o
	gcc -Wall $(LIBS) -o  hellovg hellovg.o ../libshapes.o ../oglinit.o

mouse-hellovg:	mouse-hellovg.o ../libshapes.o ../oglinit.o
	gcc -Wall $(LIBS) -o  mouse-hellovg mouse-hellovg.o ../libshapes.o ../oglinit.o

particles:	particles.o ../libshapes.o ../oglinit.o
	gcc -Wall $(LIBS) -o  particles particles.o ../libshapes.o ../oglinit.o

clip:	clip.o ../libshapes.o ../oglinit.o
	gcc -Wall $(LIBS) -o  clip clip.o ../libshapes.o ../oglinit.o

indent:
	indent -linux -c 60 -brf -l 132 shapedemo.c hellovg.c mouse-hellovg.c particles.c clip.c
