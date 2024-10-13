mkdir -p build
rlmake \
    --scratch \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Main \
    -c "clang++ -I./lib/raylib/include -L./lib/raylib/lib -Wl,-rpath,./lib/raylib/lib -l raylib -lGL -lm -lpthread -ldl -lrt -lX11 -o" \
    src/Main.ref
