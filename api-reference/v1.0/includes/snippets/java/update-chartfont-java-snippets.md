---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookChartFont workbookChartFont = new WorkbookChartFont();
workbookChartFont.setBold(true);
workbookChartFont.setColor("color-value");
workbookChartFont.setItalic(true);
workbookChartFont.setName("name-value");
workbookChartFont.setSize(99d);
workbookChartFont.setUnderline("underline-value");
WorkbookChartFont result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").axes().valueAxis().format().font().patch(workbookChartFont);


```