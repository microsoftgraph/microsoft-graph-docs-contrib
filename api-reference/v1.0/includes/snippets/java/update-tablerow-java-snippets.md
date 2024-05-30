---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookTableRow workbookTableRow = new WorkbookTableRow();
workbookTableRow.setIndex(99);
workbookTableRow.setValues("values-value");
WorkbookTableRow result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").rows().byWorkbookTableRowId("{workbookTableRow-id}").patch(workbookTableRow);


```