---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.add.AddPostRequestBody();
addPostRequestBody.setType("ColumnStacked");
addPostRequestBody.setSourceData("A1:B1");
addPostRequestBody.setSeriesBy("Auto");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().add().post(addPostRequestBody);


```