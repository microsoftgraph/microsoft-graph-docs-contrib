---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.tables.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.tables.add.AddPostRequestBody();
addPostRequestBody.setAddress("Sheet1!A1:D5");
addPostRequestBody.setHasHeaders(true);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().add().post(addPostRequestBody);


```