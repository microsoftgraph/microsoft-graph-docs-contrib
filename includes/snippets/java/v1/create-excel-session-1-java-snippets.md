---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.createsession.CreateSessionPostRequestBody createSessionPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.createsession.CreateSessionPostRequestBody();
createSessionPostRequestBody.setPersistChanges(true);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().createSession().post(createSessionPostRequestBody);


```