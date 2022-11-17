# Compile the hello binary for the host architecture
docker run --rm -v "$(PWD):/work" -w /work/hello \
    -e GOOS="$(go env GOOS)" -e GOARCH="$(go env GOARCH)" \
    cgr.dev/chainguard/go build -o /work/hello .

# Run hello binary on the host
./hello/hello
