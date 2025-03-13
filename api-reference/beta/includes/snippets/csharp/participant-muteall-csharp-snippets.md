---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.Participants.MuteAll;

var requestBody = new MuteAllPostRequestBody
{
	Participants = new List<string>
	{
		"",
	},
	ClientContext = "clientContext-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].Participants.MuteAll.PostAsync(requestBody);


```