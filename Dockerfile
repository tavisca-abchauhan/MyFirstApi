    
FROM mcr.microsoft.com/dotnet/core/aspnet
FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR app/
COPY  /Release/publish/ .
ENTRYPOINT ["dotnet", "APISample.dll"]