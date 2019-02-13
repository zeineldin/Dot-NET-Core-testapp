# NET-Core-testapp

This is simple example for building ASP.NET Core Docker Image and run it 

``` docker-compose run -d ```

To use Docker file only.

```docker run -it --rm -v $PWD:/aspnetapp -w /aspnetapp -p 6060:80 microsoft/dotnet:2.2-sdk  /bin/bash```

To build the app not using docker.

```cd aspnetapp```

```dotnet publish -c Release -o out```

```cd out ```

```cp -r * ../../```

```dotnet aspnetapp.dll```
