---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.names.item.range.delete.DeletePostRequestBody deletePostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.names.item.range.delete.DeletePostRequestBody();
deletePostRequestBody.setShift("shift-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().byWorkbookNamedItemId("{workbookNamedItem-id}").range().delete().post(deletePostRequestBody);


```