---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.CheckMemberGroups;

var requestBody = new CheckMemberGroupsPostRequestBody
{
	GroupIds = new List<string>
	{
		"fee2c45b-915a-4a64-b130-f4eb9e75525e",
		"4fe90ae7-065a-478b-9400-e0a0e1cbd540",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.CheckMemberGroups.PostAsCheckMemberGroupsPostResponseAsync(requestBody);


```