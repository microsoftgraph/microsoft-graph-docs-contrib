---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new UserSource
{
	Email = "admin@contoso.com",
	IncludedSources = SourceType.Mailbox,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].LegalHolds["{ediscoveryHoldPolicy-id}"].UserSources.PostAsync(requestBody);


```