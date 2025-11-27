---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkbookCommentReply workbookCommentReply = new WorkbookCommentReply();
workbookCommentReply.setRichContent("<at id=\"0\">Kate Kristensen</at> - Can you take a look?");
LinkedList<WorkbookCommentMention> mentions = new LinkedList<WorkbookCommentMention>();
WorkbookCommentMention workbookCommentMention = new WorkbookCommentMention();
workbookCommentMention.setId(0);
workbookCommentMention.setName("Kate Kristensen");
workbookCommentMention.setEmail("kakri@contoso.com");
mentions.add(workbookCommentMention);
workbookCommentReply.setMentions(mentions);
workbookCommentReply.setContentType("mention");
WorkbookCommentReply result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().comments().byWorkbookCommentId("{workbookComment-id}").replies().post(workbookCommentReply);


```