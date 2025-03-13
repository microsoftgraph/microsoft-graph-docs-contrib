---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartTitle workbookChartTitle = new WorkbookChartTitle();
workbookChartTitle.setOverlay(true);
workbookChartTitle.setText("text-value");
workbookChartTitle.setVisible(true);
WorkbookChartTitle result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").title().patch(workbookChartTitle);


```