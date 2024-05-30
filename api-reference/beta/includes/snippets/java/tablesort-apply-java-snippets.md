---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.tables.item.sort.apply.ApplyPostRequestBody applyPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.tables.item.sort.apply.ApplyPostRequestBody();
LinkedList<WorkbookSortField> fields = new LinkedList<WorkbookSortField>();
WorkbookSortField workbookSortField = new WorkbookSortField();
workbookSortField.setKey(99);
workbookSortField.setSortOn("sortOn-value");
workbookSortField.setAscending(true);
workbookSortField.setColor("color-value");
workbookSortField.setDataOption("dataOption-value");
WorkbookIcon icon = new WorkbookIcon();
icon.setSet("set-value");
icon.setIndex(99);
workbookSortField.setIcon(icon);
fields.add(workbookSortField);
applyPostRequestBody.setFields(fields);
applyPostRequestBody.setMatchCase(true);
applyPostRequestBody.setMethod("method-value");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").sort().apply().post(applyPostRequestBody);


```