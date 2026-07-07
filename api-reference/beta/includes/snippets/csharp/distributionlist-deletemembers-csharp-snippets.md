---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.DistributionLists.Item.DeleteMembers;
using Microsoft.Graph.Beta.Models;

var requestBody = new DeleteMembersPostRequestBody
{
	Members = new List<Member>
	{
		new Member
		{
			Key = "MeganB@contoso.com",
			RoutingType = "SMTP",
			RecipientType = RecipientType.Contact,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DistributionLists["{distributionList-id}"].DeleteMembers.PostAsync(requestBody);


```