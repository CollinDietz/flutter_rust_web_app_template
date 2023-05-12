
export RUSTUP_TOOLCHAIN=nightly
export RUSTFLAGS='-C target-feature=+atomics,+bulk-memory,+mutable-globals'

wasm-pack build -t no-modules -d `pwd`/web/pkg --no-typescript --out-name native --dev native -- -Z build-std=std,panic_abort