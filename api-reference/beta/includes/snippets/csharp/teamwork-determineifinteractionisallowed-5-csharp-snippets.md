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
		new EmailIdentity
		{
			OdataType = "microsoft.graph.emailIdentity",
			Email = "LauraW@foo.com",
		},
		new TeamworkUserIdentity
		{
			OdataType = "microsoft.graph.teamworkUserIdentity",
			UserPrincipalName = "MaiaR@foobar.com",
		},
		new TeamworkUserIdentity
		{
			OdataType = "microsoft.graph.teamworkUserIdentity",
			Id = "bd6a223f-59b5-46dd-90bc-0ddebaf3da5a",
		},
	},
	InteractionType = TeamworkInteractionType.CreateChat,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teamwork.DetermineIfInteractionIsAllowed.PostAsDetermineIfInteractionIsAllowedPostResponseAsync(requestBody);


```