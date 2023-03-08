#FROM microsoft/dotnet:2.2-sdk AS build
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY aspnetapp/. ./aspnetapp/
RUN dotnet restore

# copy everything else and build app
WORKDIR /app/aspnetapp
RUN dotnet publish -c Release -o out


#FROM microsoft/dotnet:2.2-aspnetcore-runtime AS runtime
FROM mcr.microsoft.com/dotnet/core/asp:3.1 AS runtime
WORKDIR /app
COPY --from=build /app/aspnetapp/out ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
