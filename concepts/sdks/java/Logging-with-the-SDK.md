When you create a new `GraphServiceClient`, you are required to pass in an instance of `ILogger`. 

If you create a new client by using the default configuration...

```Java
GraphServiceClient client = GraphServiceClient
  .builder()
  .fromConfig(mClientConfig)
  .buildClient();
```

...a new `DefaultLogger` is created on your behalf. You can access this logger directly from the client:

```Java
client.getLogger();
```

By default, the logger level is set to `ERROR`. To set the logger level:

```Java
client.getLogger().setLoggingLevel(LoggerLevel.DEBUG);
```

Enabling `DEBUG` logging shows you the full HTTP response errors you receive, which can be very helpful when determining errors in your code or determining service or SDK bugs.