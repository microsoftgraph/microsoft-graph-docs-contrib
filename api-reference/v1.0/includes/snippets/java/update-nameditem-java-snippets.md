---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookNamedItem workbookNamedItem = new WorkbookNamedItem();
workbookNamedItem.setType("type-value");
workbookNamedItem.setScope("scope-value");
workbookNamedItem.setComment("comment-value");
Json value = new Json();
workbookNamedItem.setValue(value);
workbookNamedItem.setVisible(true);
WorkbookNamedItem result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().byWorkbookNamedItemId("{workbookNamedItem-id}").patch(workbookNamedItem);


```