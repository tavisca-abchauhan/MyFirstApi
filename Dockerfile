FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base

WORKDIR app/
COPY APISample/bin/Release/netcoreapp2.2/ .
EXPOSE 3120
ENTRYPOINT ["dotnet", "APISample.dll"]
