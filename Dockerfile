FROM mcr.microsoft.com/dotnet/sdk:3.1
WORKDIR /app
COPY ppojastores/trunk/PoojaStores .
RUN dotnet build
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0/5000"]

