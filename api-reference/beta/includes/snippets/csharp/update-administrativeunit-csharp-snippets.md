---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AdministrativeUnit
{
	DisplayName = "Executive Division",
	MembershipType = "Dynamic",
	MembershipRule = "(user.country -eq \"United States\")",
	MembershipRuleProcessingState = "On",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AdministrativeUnits["{administrativeUnit-id}"].PatchAsync(requestBody);


```