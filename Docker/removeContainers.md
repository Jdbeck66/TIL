# Clean up executed containers

## remove all executed containers

>>>
**-a** all
  
 **-q** returns numeric keys
  
 **-f** filters output based on the conditions provided

 **status=exited** the filter condition
>>>

``` docker
docker rm $(docker ps -a -q -f status=exited)
```

This also does the same thing

``` docker
docker container prune
```

This deletes images no longer needed

``` docker
docker rmi
```

Adding `--rm` autmatically removes the container when it exits

``` docker
docker run --rm <dockerImageName>
```
