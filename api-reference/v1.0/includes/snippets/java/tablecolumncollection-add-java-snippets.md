---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.tables.item.columns.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.tables.item.columns.add.AddPostRequestBody();
addPostRequestBody.setIndex(3);
LinkedList<UntypedNode> values = new LinkedList<UntypedNode>();
UntypedNode  = new UntypedNode();
values.add();
addPostRequestBody.setValues(values);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").columns().add().post(addPostRequestBody);


```