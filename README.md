# Flume docker image

These images are part of the bigdata docker image series. All of the images use the same [base docker image](https://github.com/elek/docker-bigdata-base) which contains advanced configuration loading. For more detailed instruction see the [README](https://github.com/elek/docker-bigdata-base/blob/master/README.md) in the docker-bigdata-base repository.

As a nutshell:


## Configuration

The image could be configured:

* With environment variables
* With the key value store of the consul server
* With Spring config server

For examples and more details see the [repository](https://github.com/elek/docker-bigdata-base) of the base image.

Used environment variables:

 

| Name              | Description                         | flume-ng arg | Default                               |
| ----------------- | ----------------------------------- | ------------ | ------------------------------------- |
| FLUME_CONF_DIR    | Configuration dir for flume         | --conf       | /opt/flume/conf/                      |
| FLUME_NAME        | Name of the agent (from the config) | --name       | agent                                 |
| FLUME_OPTS        | Additional options for flume-ng     |              | -Dflume.root.logger=INFO,console      |
| FLUME_CONFIG_FILE | Flume topology configuration        | -f           | /opt/flume/conf/flume-conf.properties |

## Running

Using the image depends from the configuration loading and the exact use case. You can find multiple examples in [this](https://github.com/elek/bigdata-docker) repository to use the images:

* on the local machine using docker-compose
* on remote cluster using ansible 
* on remote cluster and local macine with using docker-compose downloaded from the consul image. 

### Smoketest

```
docker run -e FLUME_CONFIG_FILE=/opt/flume/conf/flume-example.properties -it elek/flume
```

## Versioning policy

  The latest tag points to the latest configuration loading and the latest stable apache version.

  If there is plain version tag without prefix it is synchronized with the version of the original apache software.

  It there is a prefix (eg. HDP) it includes a specific version from a specific distribution.

  As the configuration loading in the base image is constantly evolving even the tags of older releases may be refreshed over the time.


