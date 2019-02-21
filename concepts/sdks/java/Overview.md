# Microsoft Graph SDK for Java

The Microsoft Graph SDK for Java is designed to look just like the Microsoft Graph APIs.

## GraphServiceClient
A `GraphServiceClient` is always associated with an authentication provider to ensure requests are authenticated. This can be created by using a builder returned by the static method `GraphServiceClient.builder()`. All requests use a `GraphServiceClient` object to send information to the service, and it should be constructed once for your application's life cycle.

## Resource model
Resources, like items or drives, are represented by `DriveItem` and `Drive`, respectively. These objects contain properties that represent the properties of a resource. These objects can't make calls against the service; they are purely models.

To get the name of an item, you address the `name` property. It is possible for any of these properties to be null at any time.

The resources that are generated map to the json model described by the [$metadata service document](https://graph.microsoft.com/v1.0/$metadata). There are items that might not be exposed because they expire very quickly or represent functionality that is not featured in this SDK as of yet. To access these fields, use `getRawObject()` on the model items and access the specific properties that are not in the model.

Advanced users can use the [MSGraph SDK Code Generator](https://github.com/microsoftgraph/MSGraph-SDK-Code-Generator) in concert with updated $metadata from the [beta](https://graph.microsoft.com/beta/$metadata) or other preview endpoints.

## Issuing requests
To make requests against the service, first build a request with **RequestBuilder**, and then build it into a Request object, which is then sent against the service. This follows the URL scheme that the Microsoft Graph API uses for all its resources.

### Request builders
To generate requests, you chain together calls on request builder objects. You get the first request builder from the `GraphServiceClient` object. To get a drive, create a request builder by calling **GraphServiceClient.me**.

|Task            | SDK               | URL                             |
|:---------------|:-----------------:|:--------------------------------|
|Get the user     | `GraphServiceClient.me()` | GET graph.microsoft.com/v1.0/me|

`me` returns an `IUserRequestBuilder` object. From `me`, you can continue to chain the requests to get everything else in the API, like a drive.

|Task            | SDK                                | URL                                       |
|:---------------|:----------------------------------:|:------------------------------------------|
|Get the user's drive     | `GraphServiceClient.me().drive()` | GET graph.microsoft.com/v1.0/me/drive/|


Here, `GraphServiceClient.me().drive()` returns an `IUserRequestBuilder` that contains a method `drive(...)` to get an `IUserRequestBuilder`.

### Requests
After you have constructed the request, you call the `buildRequest()` method on the request builder. This constructs the request object needed to make calls against the service.

For an item you call:

```java
final IDriveItemRequest itemRequest = graphServiceClient
    .me()
    .drive()
    .items("1234")
    .buildRequest();
```

All request builders have a `buildRequest()` method that can generate an `IHttpRequest` object. Request objects may have different methods on them depending on the type of request. To get an item, you call:

```java
itemRequest.get(new ICallback<DriveItem>{
    @Override
    public void success(final DriveItem result) {
        // This will make the network request and return the item
    }
    @Override
    public void failure(final ClientException ex) {
        // or an error if there was one
    }
});
```

You could also chain this together with the earlier call:

```java

graphServiceClient
    .me()
    .drive()
    .items("1234")
    .buildRequest()
    .get(new ICallback<DriveItem>{
        @Override
        public void success(final DriveItem result) {
            // This will make the network request and return the item
        }
        @Override
        public void failure(final ClientException ex) {
            // or an error if there was one
        }
    });
```

For more information about items, see [items](/docs/items.md). For more information about errors, see [errors](/docs/errors.md).

## Query options

If you only want to retrieve certain properties of a resource, you use `select` to specify them. Here's how to get only the names and ids of an item:

```java
graphServiceClient
    .me()
    .drive()
    .items("1234")
    .buildRequest()
    .select("name,id")
    .get(new ICallback<DriveItem>() {
        @Override
        public void success(final DriveItem result) {
            // The item object will have null properties for everything except name and id
        }
    });
```

To expand certain properties on resources, you can call a similar `expand` method, like this:

```java
graphServiceClient
    .me()
    .drive()
    .items("1234")
    .buildRequest()
    .expand("thumbnails")
    .get(new ICallback<DriveItem>() {
        @Override
        public void success(final DriveItem result) {
            // the item object will have collection page of thumbnails for its thumbnails property if thumbnails exist.
        }
    });
```

## Additional request options

If you need to include more specific behavior during a request, you can add `Option` objects when calling `buildRequest`.

Here's an example of how to add an additional query parameter to sort the returned collection page results by size:

```java
final List<Option> options = new LinkedList<Option>();
options.add(new QueryOption("orderby", "size"));
graphServiceClient
    .me()
    .drive()
    .root()
    .children()
    .buildRequest(options)
    .get(new ICallback<IDriveItemCollectionPage>() {
        @Override
        public void success(final IDriveItemCollectionPage iDriveItemCollectionPage) {
            // Handle success of this page and its getNextPage() results will have their contents sorted by size
        }
        @Override
        public void failure(final ClientException ex) {
            // Handle failure
        }
    });
```

Here's how to add an additional HTTP header to request only a specific set of bytes from a file (partial download):

 ```java
final String myItemId = "1234"; // The id of the item to download
final List<Option> options = new LinkedList<Option>();
options.add(new HeaderOption("Range", "bytes=0-128"));
graphServiceClient()
    .me()
    .drive()
    .items(myItemId)
    .content()
    .buildRequest(options)
    .get(new ICallback<InputStream>() {
        @Override
        public void success(final InputStream inputStream) {
            // Handle success of this partial range of the file
        }
        @Override
        public void failure(final ClientException ex) {
            // Handle failure
        }
    });
 ```

## Setting properties to `null`
To support PATCH operations involving `null` values, specify the property name you wish to nullify:

```java
user
    .additionalDataManager()
    .put("officeLocation", JsonNull.INSTANCE);
```
