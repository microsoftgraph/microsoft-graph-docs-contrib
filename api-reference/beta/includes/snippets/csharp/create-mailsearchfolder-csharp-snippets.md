---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailSearchFolder
{
	OdataType = "microsoft.graph.mailSearchFolder",
	DisplayName = "Weekly digests",
	IncludeNestedFolders = true,
	SourceFolderIds = new List<string>
	{
		"AQMkADYAAAIBDAAAAA==",
	},
	FilterQuery = "contains(subject, 'weekly digest')",
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].ChildFolders.PostAsync(requestBody);


```