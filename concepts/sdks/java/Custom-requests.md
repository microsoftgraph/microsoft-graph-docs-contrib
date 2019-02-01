## Making custom calls to Graph
The Graph SDK attempts to enable all available scenarios through Microsoft Graph. There are times, however, through errors or custom Graph functionality, that makes calling the desired endpoint not possible through the provided requests and builders. You may also want to access bleeding-edge features or beta functionality that has not yet reached the SDK. You can use custom requests to get the data you need regardless of the state of the library.

## Creating a custom request
The custom request builder is available directly off of the GraphServiceClient object.

If you are deserializing to an existing model, you can pass in the class:

```java
User me = graphClient
  .customRequest("/me", User.class)
  .buildRequest()
  .get();
```

This is useful in scenarios in which new paths expose existing Graph objects. 

## Accessing new properties
If new properties are added to an existing object, you can access them via the `additionalDataManager` property bag:

```java
String country = me.additionalDataManager().get("country").getAsString();
```

## Deserializing new objects
If you are not deserializing to an existing model, the results are deserialized into a JsonObject:

```java
JsonObject response = graphClient
  .customRequest("/newEndpoint")
  .buildRequest()
  .get();
```

Data can then be extracted via `get`:

```java
String title = response.get("title").getAsString();
```

## Accessing the beta endpoint
To access the beta endpoint, you can change the URL that the GraphServiceClient object points to:

```java
graphClient.setServiceRoot("https://graph.microsoft.com/beta/");
```