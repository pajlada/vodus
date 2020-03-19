PKGS=freetype2 libpng libavcodec libavutil
CXXFLAGS=-Wall -O3 -fno-exceptions -std=c++17 -ggdb $(shell pkg-config --cflags $(PKGS))
LIBS=$(shell pkg-config --libs $(PKGS)) -lgif -lpthread

.PHONY: all
all: vodus Makefile

vodus: src/vodus.cpp src/vodus_image32.cpp src/vodus_main.cpp
	$(CXX) $(CXXFLAGS) -o vodus src/vodus.cpp $(LIBS)

.PHONY: render
render: output.mpeg

output.mpeg: vodus
	./vodus --sample-png assets/ayaya.png --sample-gif assets/phpHop.gif --font assets/ComicNeue_Bold.otf --output output.mpeg 569086201.txt
