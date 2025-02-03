---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.range.Range()GetRequestBody rangeGetRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.range.Range()GetRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("address", "address-value");
rangeGetRequestBody.setAdditionalData(additionalData);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").range().get(rangeGetRequestBody);


```