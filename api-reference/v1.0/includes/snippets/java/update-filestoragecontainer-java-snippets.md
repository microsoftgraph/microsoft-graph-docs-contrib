---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainer fileStorageContainer = new FileStorageContainer();
fileStorageContainer.setDisplayName("Updated Name");
fileStorageContainer.setDescription("Updated Description");
FileStorageContainer result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").patch(fileStorageContainer);


```