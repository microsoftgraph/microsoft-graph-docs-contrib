---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new SchedulingGroup
{
	DisplayName = "Cashiers",
	IsActive = true,
	Code = "CashierCode",
	UserIds = new List<string>
	{
		"c5d0c76b-80c4-481c-be50-923cd8d680a1",
		"2a4296b3-a28a-44ba-bc66-0274b9b95851",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.SchedulingGroups.PostAsync(requestBody);


```