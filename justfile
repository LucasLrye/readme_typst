set unstable

readme-typ-file := 'README.typ'

default:
    just --list



# –––––– [ MyCompile ] ––––––
readme: readme-compile-svgs

readme-compile-svgs:
    typst compile -f svg {{readme-typ-file}} assets/README-{p}.svg
readme-watch:
    typst watch {{readme-typ-file}}
 
# from source of https://github.com/marc-thieme/frame-it/blob/main/justfile