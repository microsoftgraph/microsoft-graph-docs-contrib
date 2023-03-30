---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.UnifiedGroupSource
{
	IncludedSources = Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Mailbox | Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Site,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"group@odata.bind" , "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84"
		},
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].UnifiedGroupSources.PostAsync(requestBody);


```