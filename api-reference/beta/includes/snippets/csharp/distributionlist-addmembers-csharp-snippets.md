---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.DistributionLists.Item.AddMembers;
using Microsoft.Graph.Beta.Models;

var requestBody = new AddMembersPostRequestBody
{
	Members = new List<Member>
	{
		new Member
		{
			DisplayName = "Megan Bowen",
			Key = "MeganB@contoso.com",
			RoutingType = "SMTP",
			RecipientType = RecipientType.Mailbox,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DistributionLists["{distributionList-id}"].AddMembers.PostAsync(requestBody);


```