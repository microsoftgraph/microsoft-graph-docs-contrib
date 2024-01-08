---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Ediscovery;

var requestBody = new NoncustodialDataSource
{
	ApplyHoldToSource = true,
	DataSource = new UserSource
	{
		OdataType = "microsoft.graph.ediscovery.userSource",
		Email = "adelev@contoso.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].NoncustodialDataSources.PostAsync(requestBody);


```