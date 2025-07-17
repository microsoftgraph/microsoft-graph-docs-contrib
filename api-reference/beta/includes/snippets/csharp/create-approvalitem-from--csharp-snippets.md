---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ApprovalItem
{
	Approvers = new List<ApprovalIdentitySet>
	{
		new ApprovalIdentitySet
		{
			User = new Identity
			{
				Id = "39d1a7fb-5f54-4c89-b513-241683718c9b",
				DisplayName = "Jana Pihlak",
			},
		},
		new ApprovalIdentitySet
		{
			Group = new Identity
			{
				Id = "f2926053-5479-4bce-ad4c-8394ce51d6c5",
			},
		},
	},
	DisplayName = "Title of approval",
	Description = "Details of approval",
	ApprovalType = ApprovalItemType.Basic,
	AllowEmailNotification = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.Approval.ApprovalItems.PostAsync(requestBody);


```