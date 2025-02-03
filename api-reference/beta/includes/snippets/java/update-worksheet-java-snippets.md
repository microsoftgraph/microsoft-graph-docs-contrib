---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookWorksheet workbookWorksheet = new WorkbookWorksheet();
workbookWorksheet.setPosition(99);
workbookWorksheet.setName("name-value");
workbookWorksheet.setVisibility("visibility-value");
WorkbookWorksheet result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().worksheets().byWorkbookWorksheetId("{workbookWorksheet-id}").patch(workbookWorksheet);


```