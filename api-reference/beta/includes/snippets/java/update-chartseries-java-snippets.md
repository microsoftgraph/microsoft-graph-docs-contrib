---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartSeries workbookChartSeries = new WorkbookChartSeries();
workbookChartSeries.setName("name-value");
WorkbookChartSeries result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").series().byWorkbookChartSeriesId("{workbookChartSeries-id}").patch(workbookChartSeries);


```