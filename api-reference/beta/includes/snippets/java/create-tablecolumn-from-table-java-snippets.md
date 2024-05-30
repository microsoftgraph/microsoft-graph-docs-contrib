---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookTableColumn workbookTableColumn = new WorkbookTableColumn();
workbookTableColumn.setId("99");
workbookTableColumn.setName("name-value");
workbookTableColumn.setIndex(99);
workbookTableColumn.setValues("values-value");
WorkbookTableColumn result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").columns().post(workbookTableColumn);


```