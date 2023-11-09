---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Group
{
	Description = "Self help community for library",
	DisplayName = "Library Assist",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "library",
	SecurityEnabled = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups.PostAsync(requestBody);


```