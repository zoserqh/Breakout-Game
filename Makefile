
TARGET_EXEC = exec/main

BUILD_DIR = build
SOURCE_CODE_DIR = source

OBJECTS = build/game.o build/glad.o build/resource_manager.o \
build/shader.o build/texture.o build/sprite_renderer.o \
build/game_object.o build/game_level.o build/ball_object.o build/main.o

INCLUDE = -I/usr/include/ -Isource/include/
LIBS = -L/usr/local/lib -lglfw

$(TARGET_EXEC): $(OBJECTS) 
	$(CXX) $^ $(LIBS) -o $@

build/game.o : source/game.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/glad.o : source/glad.c
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/resource_manager.o : source/resource_manager.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/shader.o : source/shader.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/texture.o : source/texture.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/sprite_renderer.o : source/sprite_renderer.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/game_object.o : source/game_object.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/game_level.o : source/game_level.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/ball_object.o : source/ball_object.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -Isource/include/ -o $@

build/main.o : source/main.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -c $^ -I/usr/include/ -Isource/include/ -o $@

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
	rm $(TARGET_EXEC)