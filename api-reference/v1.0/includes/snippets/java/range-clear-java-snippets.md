---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.names.item.range.clear.ClearPostRequestBody clearPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.names.item.range.clear.ClearPostRequestBody();
clearPostRequestBody.setApplyTo("applyTo-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().byWorkbookNamedItemId("{workbookNamedItem-id}").range().clear().post(clearPostRequestBody);


```