FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-nanoserver-1803 AS base

WORKDIR app
COPY APISample/publish .
EXPOSE 3120
ENTRYPOINT ["dotnet", "APISample.dll"]