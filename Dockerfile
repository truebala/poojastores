# Base image is .NET Core runtime only (Linux)
FROM mcr.microsoft.com/dotnet/aspnet

# Metadata in Label Schema format (http://label-schema.org)
LABEL org.label-schema.name    = ".NET Core Demo Web App" \
      org.label-schema.version = "1.5.0" \
      org.label-schema.vendor  = "Ben Coleman" \
      org.opencontainers.image.source = "https://github.com/truebala/poojastores.git"

# Seems as good a place as any
WORKDIR /app

# Copy already published binaries (from build stage image)
COPY  ppojastores/trunk/PoojaStores/appsettings.json .

# Expose port 5000 from Kestrel webserver
EXPOSE 5000

# Tell Kestrel to listen on port 5000 and serve plain HTTP
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT Production
# This is critical for the Azure AD signin flow to work in Kubernetes and App Service
ENV ASPNETCORE_FORWARDEDHEADERS_ENABLED=true

# Run the ASP.NET Core app
ENTRYPOINT dotnet dotnet-demoapp.dll
