---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookTableRow workbookTableRow = new WorkbookTableRow();
LinkedList<LinkedList<UntypedNode>> values = new LinkedList<LinkedList<UntypedNode>>();
LinkedList<UntypedNode>  = new LinkedList<UntypedNode>();
.add(1d);
.add(2d);
.add(3d);
values.add();
LinkedList<UntypedNode> 4 = new LinkedList<UntypedNode>();
4.add(4d);
4.add(5d);
4.add(6d);
values.add(4);
workbookTableRow.setValues(values);
WorkbookTableRow result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").rows().post(workbookTableRow, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "respond-async");
	requestConfiguration.headers.add("Workbook-Session-Id", "{Workbook-Session-Id}");
});


```