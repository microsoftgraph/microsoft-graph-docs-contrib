---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.tables.item.rows.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.tables.item.rows.add.AddPostRequestBody();
addPostRequestBody.setIndex(5);
LinkedList<LinkedList<Number>> values = new LinkedList<LinkedList<Number>>();
LinkedList<Number> property = new LinkedList<Number>();
property.add(1);
property.add(2);
property.add(3);
values.add(property);
LinkedList<Number> property4 = new LinkedList<Number>();
property4.add(4);
property4.add(5);
property4.add(6);
values.add(property4);
addPostRequestBody.setValues(values);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").rows().add().post(addPostRequestBody);


```