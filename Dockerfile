# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed gems specified in Gemfile
# Make sure both Gemfile and Gemfile.lock are copied
COPY Gemfile Gemfile.lock ./

RUN bundle install

# Make port 4567 available to the world outside this container
EXPOSE 4567

# Define environment variable
ENV NAME World

# Run app.rb when the container launches
CMD ["ruby", "app.rb"]
