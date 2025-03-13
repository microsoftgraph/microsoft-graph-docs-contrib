---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.worksheets.item.charts.item.setposition.SetPositionPostRequestBody setPositionPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.worksheets.item.charts.item.setposition.SetPositionPostRequestBody();
setPositionPostRequestBody.setStartCell("startCell-value");
setPositionPostRequestBody.setEndCell("endCell-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").setPosition().post(setPositionPostRequestBody);


```