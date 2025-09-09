alias ll='ls -lha --color=auto'

alias redocly='docker run --rm -it --init -p 8080:8080 -v $(pwd):/workdir -w /workdir redocly/cli' # single quoted to avoid early evaluation
alias grpcui="docker run --rm -it -p 8080:8080 fullstorydev/grpcui"
alias grpcurl="docker run --rm -it fullstorydev/grpcurl"
