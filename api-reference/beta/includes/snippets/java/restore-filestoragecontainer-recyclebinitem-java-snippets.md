---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.storage.filestorage.containers.item.recyclebin.items.restore.RestorePostRequestBody restorePostRequestBody = new com.microsoft.graph.beta.storage.filestorage.containers.item.recyclebin.items.restore.RestorePostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("5d625d33-338c-4a77-a98a-3e287116440c");
ids.add("73133853-48f2-4956-bc4a-03f8d1675042");
restorePostRequestBody.setIds(ids);
var result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").recycleBin().items().restore().post(restorePostRequestBody);


```