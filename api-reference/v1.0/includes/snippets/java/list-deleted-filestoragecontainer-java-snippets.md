---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainerCollectionResponse result = graphClient.storage().fileStorage().deletedContainers().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082";
});


```