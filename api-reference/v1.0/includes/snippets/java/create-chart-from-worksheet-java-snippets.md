---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChart workbookChart = new WorkbookChart();
workbookChart.setId("id-value");
workbookChart.setHeight(99d);
workbookChart.setLeft(99d);
WorkbookChart result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().post(workbookChart);


```