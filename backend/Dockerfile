# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Golang application
RUN go build -o main .

# Expose the port the app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["./main"]
