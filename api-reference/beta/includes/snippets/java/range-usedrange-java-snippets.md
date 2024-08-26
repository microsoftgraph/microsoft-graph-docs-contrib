---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.names.item.range.usedrange.UsedRange()GetRequestBody usedRangeGetRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.names.item.range.usedrange.UsedRange()GetRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("valuesOnly", true);
usedRangeGetRequestBody.setAdditionalData(additionalData);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().byWorkbookNamedItemId("{workbookNamedItem-id}").range().usedRange().get(usedRangeGetRequestBody);


```