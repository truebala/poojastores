FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env
WORKDIR /app
COPY * ppojastores/trunk/PoojaStores/PoojaStores.csproj ./
RUN dotnet restore
RUN dotnet publish -c Release -o out
EXPOSE 5000
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]


