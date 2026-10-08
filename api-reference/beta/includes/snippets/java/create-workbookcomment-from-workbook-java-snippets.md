---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookComment workbookComment = new WorkbookComment();
workbookComment.setCellAddress("Sheet1!A1");
workbookComment.setContent("This is my comment.");
workbookComment.setContentType("plain");
WorkbookComment result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().comments().post(workbookComment);


```