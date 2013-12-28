#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc-4.8
CXX = g++-4.8
AR = ar
LD = g++-4.8
WINDRES = windres

INC =
CFLAGS = -Winit-self -Wredundant-decls -Wcast-align -Winline -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Wzero-as-null-pointer-constant -Weffc++ -Wmain -std=c++11 -Wfatal-errors -Wextra -Wall
RESINC =
LIBDIR =
LIB = -lglfw -lGLEW -lGLU -lGL
LDFLAGS =

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG =
OUT_DEBUG = bin/Debug/OpenStrategia

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE =
OUT_RELEASE = bin/Release/OpenStrategia

OBJ_DEBUG = $(OBJDIR_DEBUG)/Main.o $(OBJDIR_DEBUG)/Program.o $(OBJDIR_DEBUG)/RenderObject.o $(OBJDIR_DEBUG)/RenderObject2D.o $(OBJDIR_DEBUG)/RenderObject3D.o $(OBJDIR_DEBUG)/Shader.o $(OBJDIR_DEBUG)/Camera.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/Main.o $(OBJDIR_RELEASE)/Program.o $(OBJDIR_RELEASE)/RenderObject.o $(OBJDIR_RELEASE)/RenderObject2D.o $(OBJDIR_RELEASE)/RenderObject3D.o $(OBJDIR_RELEASE)/Shader.o $(OBJDIR_RELEASE)/Camera.o

all: debug release

clean: clean_debug clean_release

before_debug:
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug:

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/Main.o: Main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Main.cpp -o $(OBJDIR_DEBUG)/Main.o

$(OBJDIR_DEBUG)/Program.o: Program.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Program.cpp -o $(OBJDIR_DEBUG)/Program.o

$(OBJDIR_DEBUG)/RenderObject.o: RenderObject.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c RenderObject.cpp -o $(OBJDIR_DEBUG)/RenderObject.o

$(OBJDIR_DEBUG)/RenderObject2D.o: RenderObject2D.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c RenderObject2D.cpp -o $(OBJDIR_DEBUG)/RenderObject2D.o

$(OBJDIR_DEBUG)/RenderObject3D.o: RenderObject3D.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c RenderObject3D.cpp -o $(OBJDIR_DEBUG)/RenderObject3D.o

$(OBJDIR_DEBUG)/Shader.o: Shader.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Shader.cpp -o $(OBJDIR_DEBUG)/Shader.o

$(OBJDIR_DEBUG)/Camera.o: Camera.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Camera.cpp -o $(OBJDIR_DEBUG)/Camera.o

clean_debug:
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)

before_release:
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release:

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/Main.o: Main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Main.cpp -o $(OBJDIR_RELEASE)/Main.o

$(OBJDIR_RELEASE)/Program.o: Program.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Program.cpp -o $(OBJDIR_RELEASE)/Program.o

$(OBJDIR_RELEASE)/RenderObject.o: RenderObject.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c RenderObject.cpp -o $(OBJDIR_RELEASE)/RenderObject.o

$(OBJDIR_RELEASE)/RenderObject2D.o: RenderObject2D.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c RenderObject2D.cpp -o $(OBJDIR_RELEASE)/RenderObject2D.o

$(OBJDIR_RELEASE)/RenderObject3D.o: RenderObject3D.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c RenderObject3D.cpp -o $(OBJDIR_RELEASE)/RenderObject3D.o

$(OBJDIR_RELEASE)/Shader.o: Shader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Shader.cpp -o $(OBJDIR_RELEASE)/Shader.o

$(OBJDIR_RELEASE)/Camera.o: Camera.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Camera.cpp -o $(OBJDIR_RELEASE)/Camera.o

clean_release:
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

