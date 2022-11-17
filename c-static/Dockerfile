# syntax=docker/dockerfile:1.4
FROM cgr.dev/chainguard/gcc-musl:latest as build

COPY <<EOF /hello.c
    #include <stdio.h>
    int main() { printf("Hello World!"); }
    EOF
RUN cc -static /hello.c -o /hello

FROM cgr.dev/chainguard/static:latest

COPY --from=build /hello /hello
CMD ["/hello"]
