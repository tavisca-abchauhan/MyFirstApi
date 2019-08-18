FROM mcr.microsoft.com/dotnet/core/aspnet

WORKDIR app/
COPY APISample/bin/Release/netcoreapp2.2/ .
ENTRYPOINT ["dotnet", "APISample.dll"]
