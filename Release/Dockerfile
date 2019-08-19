    
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 
#FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR app/
COPY  /Release/publish/ .
ENTRYPOINT ["dotnet", "APISample.dll"]