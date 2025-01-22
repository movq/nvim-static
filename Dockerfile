FROM docker.io/library/alpine:edge

RUN apk add git gcc cmake make musl-dev luajit-dev lua-luv-static lua-luv-dev libuv-static libuv-dev libvterm-dev libvterm-static lua-lpeg-dev lua5.1-lpeg msgpack-c-dev tree-sitter-dev tree-sitter-static unibilium-dev gettext-dev gettext-static
