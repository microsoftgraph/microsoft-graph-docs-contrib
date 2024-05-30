---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Ediscovery;
using Microsoft.Graph.Beta.Models;

var requestBody = new UnifiedGroupSource
{
	Group = new Group
	{
		Mail = "SecretGroup@contoso.com",
	},
	IncludedSources = SourceType.Mailbox | SourceType.Site,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].UnifiedGroupSources.PostAsync(requestBody);


```