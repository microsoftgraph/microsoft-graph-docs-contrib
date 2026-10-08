---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.lock.LockPostRequestBody lockPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.lock.LockPostRequestBody();
lockPostRequestBody.setDurationMinutes(30);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").lock().post(lockPostRequestBody);


```