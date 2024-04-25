---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.workbook.tables.item.rows.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.workbook.tables.item.rows.add.AddPostRequestBody();
addPostRequestBody.setIndex(null);
LinkedList<LinkedList<Number>> values = new LinkedList<LinkedList<Number>>();
LinkedList<Number> json = new LinkedList<Number>();
json.add(1);
json.add(2);
json.add(3);
values.add(json);
LinkedList<Number> json1 = new LinkedList<Number>();
json1.add(4);
json1.add(5);
json1.add(6);
values.add(json1);
addPostRequestBody.setValues(values);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").rows().add().post(addPostRequestBody);


```