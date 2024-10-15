mkdir -p build

echo "Running Unit tests"
rlmake \
    --rich \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Unit \
    tests/Unit.ref || exit 1

./build/Unit


echo "Running Property-based tests"
rlmake \
    --rich \
    --dont-keep-rasl \
    --tmp-dir build \
    -o build/Property \
    tests/Property.ref || exit 1

./build/Property
