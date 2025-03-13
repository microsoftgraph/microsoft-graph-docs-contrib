---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartAxisTitle workbookChartAxisTitle = new WorkbookChartAxisTitle();
workbookChartAxisTitle.setText("text-value");
workbookChartAxisTitle.setVisible(true);
WorkbookChartAxisTitle result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").axes().valueAxis().title().patch(workbookChartAxisTitle);


```