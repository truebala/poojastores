FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env
WORKDIR /app
COPY * ppojastores/trunk/PoojaStores/PoojaStores.csproj .
RUN dotnet restore
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/aspnet:3.1
COPY . .
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]


