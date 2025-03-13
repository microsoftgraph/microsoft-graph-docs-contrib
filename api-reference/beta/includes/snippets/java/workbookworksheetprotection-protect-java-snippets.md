---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.protection.protect.ProtectPostRequestBody protectPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.worksheets.item.protection.protect.ProtectPostRequestBody();
WorkbookWorksheetProtectionOptions options = new WorkbookWorksheetProtectionOptions();
options.setAllowFormatCells(true);
options.setAllowFormatColumns(true);
options.setAllowFormatRows(true);
options.setAllowInsertColumns(true);
options.setAllowInsertRows(true);
options.setAllowInsertHyperlinks(true);
options.setAllowDeleteColumns(true);
options.setAllowDeleteRows(true);
options.setAllowSort(true);
options.setAllowAutoFilter(true);
options.setAllowPivotTables(true);
protectPostRequestBody.setOptions(options);
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").protection().protect().post(protectPostRequestBody);


```