---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartLegend workbookChartLegend = new WorkbookChartLegend();
workbookChartLegend.setVisible(true);
workbookChartLegend.setPosition("position-value");
workbookChartLegend.setOverlay(true);
WorkbookChartLegend result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").legend().patch(workbookChartLegend);


```