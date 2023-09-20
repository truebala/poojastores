
FROM mcr.microsoft.com/dotnet/runtime:3.1


WORKDIR /app

# Copy your .NET application binaries to the container
COPY ./bin/Release/netcoreapp3.1/publish/ .

# Define the command to run when the container starts
CMD ["./YourAppName"]
