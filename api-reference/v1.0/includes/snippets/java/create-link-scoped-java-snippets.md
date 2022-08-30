---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.createlink.CreateLinkPostRequestBody createLinkPostRequestBody = new com.microsoft.graph.drives.item.items.item.createlink.CreateLinkPostRequestBody();
createLinkPostRequestBody.setType("edit");
createLinkPostRequestBody.setScope("organization");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").createLink().post(createLinkPostRequestBody);


```