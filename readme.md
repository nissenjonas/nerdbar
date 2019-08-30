# Elixir Nerdbar


## Cheatsheet

    # Run iex (default entrypoint) interactivly through docker
    docker container run -it --rm elixir:1.9.1

    # Run bash interactivly
    docker container run -it --rm -v c:\src\nerdbar:/data -w /data elixir:1.9.1 bash

    # run mix commands inside the container
    # -w sets the working directory
    docker container run --rm -p 80:8080 -v c:\src\nerdbar:/data -w /data elixir:1.9.1 mix new app

    # Powershell shorthand to start the container
    function delix  {& 'docker.exe' "run" "-it" "--rm" "-v" "c:\src\nerdbar\app:/data/app" "-p" "4000:4000" -v "c:\src\nerdbar\.mix:/root/.mix" "-w" "/data/app" "elixir:1.9.1" "bash"}

    # Install Phoenix
    mix archive.install hex phx_new 1.4.9

    # new app
    mix phx.new --no-webpack --no-ecto
