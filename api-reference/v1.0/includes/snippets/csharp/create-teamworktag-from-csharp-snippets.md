---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TeamworkTag
{
	DisplayName = "Finance",
	Members = new List<TeamworkTagMember>
	{
		new TeamworkTagMember
		{
			UserId = "92f6952f-61ca-4a94-8910-508a240bc167",
		},
		new TeamworkTagMember
		{
			UserId = "085d800c-b86b-4bfc-a857-9371ad1caf29",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Tags.PostAsync(requestBody);


```