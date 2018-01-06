# Set initial image
FROM kozhin/rails:latest

# Set maintainer and image indo
LABEL Description="This image runs Ruby on Rails server for development" \
      Vendor="CodedRed" \
      Version="1.0" \
      Maintainer="Konstantin Kozhin <konstantin@codedred.com>"

# Create and set application folder
RUN mkdir -p /app

# Set working directory
WORKDIR /app

# Set up volume share
VOLUME ["/app"]

# Set port to listen
EXPOSE 3000

# Define entrypoint
ENTRYPOINT bash -c "source ~/.bash_profile && rails server"
