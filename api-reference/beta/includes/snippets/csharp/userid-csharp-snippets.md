---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EdiscoveryCaseMember
{
	RecipientType = RecipientType.User,
	Id = "c4af6f9d-37f6-43f9-9e17-601544234146",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].CaseMembers.PostAsync(requestBody);


```