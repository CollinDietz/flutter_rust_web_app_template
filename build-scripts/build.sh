rustup toolchain install nightly
rustup +nightly component add rust-src
rustup +nightly target add wasm32-unknown-unknown

cargo install wasm-pack

export RUSTUP_TOOLCHAIN=nightly
export RUSTFLAGS='-C target-feature=+atomics,+bulk-memory,+mutable-globals'

wasm-pack build -t no-modules -d `pwd`/web/pkg --no-typescript --out-name native --dev native -- -Z build-std=std,panic_abort