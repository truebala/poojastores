
# Stage 1: Build the .NET application
FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /app

# Copy the .csproj and restore as distinct layers
COPY app/*.csproj ./
RUN dotnet restore
EXPOSE 5000
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]


