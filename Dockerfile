FROM mcr.microsoft.com/dotnet/sdk:$IMAGE_BASE as build
WORKDIR /build
COPY /build .


ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]

