---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EdiscoveryCaseMember
{
	RecipientType = RecipientType.RoleGroup,
	Id = "b9fb4f22-5f90-47a0-b309-44fe96a959fd",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].CaseMembers.PostAsync(requestBody);


```