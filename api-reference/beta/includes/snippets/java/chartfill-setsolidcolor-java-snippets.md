---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.item.format.fill.setsolidcolor.SetSolidColorPostRequestBody setSolidColorPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.charts.item.format.fill.setsolidcolor.SetSolidColorPostRequestBody();
setSolidColorPostRequestBody.setColor("color-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").charts().byWorkbookChartId("{workbookChart-id}").format().fill().setSolidColor().post(setSolidColorPostRequestBody);


```