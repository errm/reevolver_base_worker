# Reevolver #
## Base Worker ##

This is intended generate a base docker image that images to run ci builds can be based upon.

As such it will install ruby and all non ruby dependencies needed for our projects.

## Usage ##
```
docker build github.com/reevoo/reevolver_base_worker
```

It is intended that you could include a Dockerfile in the root of the application repository and have docker build an image using this as a base that would complete the test setup and have `bundle exec rake` as an entrypoint. Thus all the ci box would need to do would be something like:

```
  docker build github.com/reevoo/mark -t mark_ci
  docker run mark
```
