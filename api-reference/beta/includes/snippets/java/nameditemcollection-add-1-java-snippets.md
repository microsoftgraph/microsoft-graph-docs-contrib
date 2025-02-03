---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.names.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.names.add.AddPostRequestBody();
addPostRequestBody.setName("test5");
addPostRequestBody.setReference("=Sheet1!$F$15:$N$27");
addPostRequestBody.setComment("Comment for the named item");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().add().post(addPostRequestBody);


```