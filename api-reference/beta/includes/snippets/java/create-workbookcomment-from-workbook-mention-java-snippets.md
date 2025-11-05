---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookComment workbookComment = new WorkbookComment();
workbookComment.setCellAddress("Sheet1!A1");
workbookComment.setRichContent("<at id=\"0\">Kate Kristensen</at> - This is my comment.");
LinkedList<WorkbookCommentMention> mentions = new LinkedList<WorkbookCommentMention>();
WorkbookCommentMention workbookCommentMention = new WorkbookCommentMention();
workbookCommentMention.setId(0);
workbookCommentMention.setName("Kate Kristensen");
workbookCommentMention.setEmail("kakri@contoso.com");
mentions.add(workbookCommentMention);
workbookComment.setMentions(mentions);
workbookComment.setContentType("mention");
WorkbookComment result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().comments().post(workbookComment);


```