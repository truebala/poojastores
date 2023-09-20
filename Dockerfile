
FROM mcr.microsoft.com/dotnet/sdk:$IMAGE_BASE as build


WORKDIR /app

# Copy your .NET application binaries to the container
COPY ppojastores/trunk/PoojaStores/bin/Release/netcoreapp3.1 .

EXPOSE 80

# Define the command to run when the container starts
ENTRYPOINT dotnet dotnet-demoapp.dll
