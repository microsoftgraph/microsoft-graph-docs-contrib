## Collections in the Microsoft Graph SDK for Java
The Microsoft Graph SDK for Java allows you to work with item collections in the Microsoft Graph service.

Collection information is contained within a `BaseCollectionPage` object, to which there are three core aspects:
* `getCurrentPage` The list of items within the current page.
* `getNextPage` The next page request builder; `null` if there are no additional pages.
* `getRawObject` The json that represents this page response, containing additional data.

## Getting a children collection by expansion
There are several navigation properties within the Microsoft Graph service that can be expanded and returned in collections pages. To access these properties, the service request needs to call `expand(...)` after the request is issued.

### Parameters

|Name|Description|
|----|-----------|
|_itemId_|The item id of the item that has the children.|
|_propertyToExpand_|The name of the navigation property to expand.|
|_callback_|The callback when the `get` call is returned.|

```java
final String itemId = "0000000000000000000000";
final String propertyToExpand = "children";
final ICallback<DriveItem> callback = new ICallback<DriveItem> {
    @Override
    public void success(final DriveItem result) {
        final IDriveItemCollectionPage page = result.children;
        logger.logDebug("Got children");
    }
    ...
    // Handle failure
}

graphServiceClient
    .me()
    .drive()
    .items(itemId)
    .buildRequest()
    .expand(propertyToExpand)
    .get(callback);
```

## Getting a children collection by request

You can reference navigation properties directly by using the `children()` function within the item's request builder.

### Parameters

|Name|Description|
|----|-----------|
|_itemId_|The item id of the item that has the children.|
|_callback_|The callback when the `get` call is returned.|

```java
final String itemId = "0000000000000000000000";
final ICallback<IDriveItemCollectionPage> callback = new ICallback<IDriveItemCollectionPage>() {
    @Override
    public void success(final IDriveItemCollectionPage result) {
        logger.logDebug("Got children");
    }
    ...
    // Handle failure
}

graphServiceClient
    .me()
    .drive()
    .items(itemId)
    .children()
    .buildRequest()
    .get(callback);
```

## Getting the next page
When getting a collection response, the `getNextPage()` function returns the null if there are no more pages, or the request builder to get the next page. By using these request builders, you can retrieve all of the items under a collection no matter the size.

### Parameters

|Name|Description|
|----|-----------|
|*itemId*|The item id of the item that has the children.|
|*callback*|The callback when the `get` call is returned.|


```java
final String itemId = "0000000000000000000000";
final ICallback<IDriveItemCollectionPage> callback = new ICallback<IDriveItemCollectionPage>() {
    @Override
    public void success(final IDriveItemCollectionPage result) {
        // If there was more pages retrieve them too
        if (result.getNextPage() != null) {
            result.getNextPage()
                    .buildRequest()
                    .get(new ICallback<IDriveItemCollectionPage>() {...});
        }
        logger.logDebug("Got children");
    }
    ...
    // Handle failure
}

graphServiceClient
    .me()
    .drive()
    .items(itemId)
    .children()
    .buildRequest()
    .get(callback);
```

## Creating a folder

You can create a folder within an item collection by using the request builders `drive`, `items`, and `children` with the `create` method.

### Parameters

|Name|Description|
|----|-----------|
|_folderToCreate_|The folder to create.|
|_parentId_|The item id for the parent item.|
|_callback_|The callback when the folder has been created.|

```java
final String parentId = "0000000000000000000000";
final DriveItem folderToCreate = new DriveItem();
folderToCreate.name = "NewFolder";
folderToCreate.folder = new Folder();

final ICallback<DriveItem> callback = new ICallback<DriveItem>() {
    @Override
    public void success(final DriveItem result) {
        logger.logDebug("Created Folder");
    }
    ...
    // Handle failure
}

graphServiceClient
    .me()
    .drive()
    .items(parentId)
    .children()
    .buildRequest()
    .create(newItem, callback);
```
