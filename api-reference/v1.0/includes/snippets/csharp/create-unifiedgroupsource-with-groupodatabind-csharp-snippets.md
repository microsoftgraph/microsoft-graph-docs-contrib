---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new UnifiedGroupSource
{
	IncludedSources = SourceType.Mailbox,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"group@odata.bind" , "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Custodians["{ediscoveryCustodian-id}"].UnifiedGroupSources.PostAsync(requestBody);


```