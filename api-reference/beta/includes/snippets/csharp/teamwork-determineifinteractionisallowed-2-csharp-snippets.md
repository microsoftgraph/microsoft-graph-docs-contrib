---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teamwork.DetermineIfInteractionIsAllowed;
using Microsoft.Graph.Beta.Models;

var requestBody = new DetermineIfInteractionIsAllowedPostRequestBody
{
	Users = new List<Identity>
	{
		new TeamworkUserIdentity
		{
			OdataType = "microsoft.graph.teamworkUserIdentity",
			Id = "59b5bc69-ca73-4ffd-a2e0-88a79115d13b",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"tenantId" , "b11186db-6149-4b3d-95ad-23c9e1bf6853"
				},
			},
		},
	},
	InteractionType = TeamworkInteractionType.CreateChat,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teamwork.DetermineIfInteractionIsAllowed.PostAsDetermineIfInteractionIsAllowedPostResponseAsync(requestBody);


```