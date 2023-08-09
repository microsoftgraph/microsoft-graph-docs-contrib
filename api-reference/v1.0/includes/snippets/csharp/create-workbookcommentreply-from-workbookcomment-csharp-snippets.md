---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookCommentReply
{
	Content = "This is my reply to the comment.",
	ContentType = "plain",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Comments["{workbookComment-id}"].Replies.PostAsync(requestBody);


```