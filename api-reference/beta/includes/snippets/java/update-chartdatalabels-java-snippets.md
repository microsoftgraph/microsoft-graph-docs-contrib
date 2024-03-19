---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartDataLabels workbookChartDataLabels = new WorkbookChartDataLabels();
workbookChartDataLabels.setPosition("position-value");
workbookChartDataLabels.setShowValue(true);
workbookChartDataLabels.setShowSeriesName(true);
workbookChartDataLabels.setShowCategoryName(true);
workbookChartDataLabels.setShowLegendKey(true);
WorkbookChartDataLabels result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").dataLabels().patch(workbookChartDataLabels);


```