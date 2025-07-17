---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveItem result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"extensions($filter=id eq 'myCustomExtension')"};
});


```