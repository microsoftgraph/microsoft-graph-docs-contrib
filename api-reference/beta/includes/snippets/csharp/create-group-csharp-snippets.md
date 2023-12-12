---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Group
{
	Description = "Self help community for golf",
	DisplayName = "Golf Assist",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "golfassist",
	SecurityEnabled = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups.PostAsync(requestBody);


```