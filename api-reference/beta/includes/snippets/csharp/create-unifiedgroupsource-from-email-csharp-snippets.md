---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.UnifiedGroupSource
{
	Group = new Group
	{
		Mail = "SecretGroup@contoso.com",
	},
	IncludedSources = Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Mailbox | Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Site,
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].UnifiedGroupSources.PostAsync(requestBody);


```