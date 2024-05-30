---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].ChildFolders.PostAsync(requestBody);


```