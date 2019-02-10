# NET-Core-testapp

This is simple example for building ASP.NET Core Docker Image and run it 

``` docker-compose run -d ```


To build the app not using docker 

```cd aspnetapp```

```dotnet publish -c Release -o out```

```cd out ```

```cp -r * ../../```

```dotnet aspnetapp.dll```
