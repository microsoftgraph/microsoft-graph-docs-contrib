---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartAxis workbookChartAxis = new WorkbookChartAxis();
UntypedNode majorUnit = new UntypedNode();
workbookChartAxis.setMajorUnit(majorUnit);
UntypedNode maximum = new UntypedNode();
workbookChartAxis.setMaximum(maximum);
UntypedNode minimum = new UntypedNode();
workbookChartAxis.setMinimum(minimum);
WorkbookChartAxis result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").axes().valueAxis().patch(workbookChartAxis);


```