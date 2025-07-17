---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.names.item.range.merge.MergePostRequestBody mergePostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.names.item.range.merge.MergePostRequestBody();
mergePostRequestBody.setAcross(true);
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().byWorkbookNamedItemId("{workbookNamedItem-id}").range().merge().post(mergePostRequestBody);


```