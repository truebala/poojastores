
FROM mcr.microsoft.com/dotnet/runtime:3.1


WORKDIR /app

# Copy your .NET application binaries to the container
COPY ppojastores/trunk/PoojaStores/bin/Release/netcoreapp3.1 .

EXPOSE 80

# Define the command to run when the container starts
CMD [". /mcr.microsoft.com/dotnet/runtime:3.1"]
