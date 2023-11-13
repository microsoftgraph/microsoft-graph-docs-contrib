---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Ediscovery;

var requestBody = new UnifiedGroupSource
{
	IncludedSources = SourceType.Mailbox | SourceType.Site,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"group@odata.bind" , "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].UnifiedGroupSources.PostAsync(requestBody);


```