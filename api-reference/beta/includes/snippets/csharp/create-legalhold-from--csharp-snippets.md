---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Ediscovery;
using Microsoft.Graph.Beta.Models;

var requestBody = new LegalHold
{
	OdataType = "#microsoft.graph.ediscovery.legalHold",
	Description = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	IsEnabled = boolean,
	Status = LegalHoldStatus.Pending,
	ContentQuery = "String",
	Errors = new List<string>
	{
		"String",
	},
	DisplayName = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].LegalHolds.PostAsync(requestBody);


```