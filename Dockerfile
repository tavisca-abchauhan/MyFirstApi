FROM microsoft/dotnet:2.2-aspnetcore-runtime
EXPOSE 80
COPY  APISample/publish/ app/
WORKDIR app/
ENTRYPOINT ["dotnet", "APISample.dll"]