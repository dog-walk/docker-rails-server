# Set initial image
FROM kozhin/rails:latest

# Set maintainer and image indo
MAINTAINER Konstantin Kozhin <konstantin@profitco.ru>
LABEL Description="This image runs Ruby on Rails server for development" Vendor="ProfitCo" Version="1.0"

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
