# Ruby on Rails server inside Docker container

Use this Dockerfile to build your own images to run Ruby on Rails applications in development mode. Pre-built images you may find at <https://hub.docker.com/r/kozhin/rails-server/tags/> (279 Mb).

Setting RUBY_VERSION environment variable allows to install specific version of Ruby language.

This container is made with:

- Ruby on Rails image for Docker (<https://hub.docker.com/r/kozhin/rails/tags/>)

## How to use

1. Create Dockerfile in your application folder

2. Add the following line to your Dockerfile: `FROM kozhin/rails-server:latest`

3. Build your application image with: `docker build -t YOUR_IMAGE_NAME .`

4. Run your application inside Docker container: `docker run -p 3000:3000 -v YOUR_APP_ABSOLUTE_PATH:/app -d YOUR_IMAGE_NAME`

5. Open <http://127.0.0.1:3000>
