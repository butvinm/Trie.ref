mkdir -p build
rlmake \
    --rich \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Unit \
    tests/Unit.ref || exit 1

./build/Unit
