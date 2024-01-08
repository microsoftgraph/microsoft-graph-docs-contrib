---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Group
{
	Description = "Marketing department folks",
	DisplayName = "Marketing department",
	GroupTypes = new List<string>
	{
		"Unified",
		"DynamicMembership",
	},
	MailEnabled = true,
	MailNickname = "marketing",
	SecurityEnabled = false,
	MembershipRule = "user.department -eq \"Marketing\"",
	MembershipRuleProcessingState = "on",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups.PostAsync(requestBody);


```