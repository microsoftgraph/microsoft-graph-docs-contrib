---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DistributionList
{
	DisplayName = "Project Team",
	Members = new List<Member>
	{
		new Member
		{
			DisplayName = "Adele Vance",
			RecipientType = RecipientType.Mailbox,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"emailAddress" , "AdeleV@contoso.com"
				},
			},
		},
		new Member
		{
			DisplayName = "Alex Wilber",
			RecipientType = RecipientType.Mailbox,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"emailAddress" , "AlexW@contoso.com"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DistributionLists.PostAsync(requestBody);


```