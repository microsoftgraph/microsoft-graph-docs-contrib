---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.item.setdata.SetDataPostRequestBody setDataPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.item.setdata.SetDataPostRequestBody();
setDataPostRequestBody.setSourceData("sourceData-value");
setDataPostRequestBody.setSeriesBy("seriesBy-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").setData().post(setDataPostRequestBody);


```