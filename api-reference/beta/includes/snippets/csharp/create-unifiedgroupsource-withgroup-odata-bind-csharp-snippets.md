---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedGroupSource = new Microsoft.Graph.Security.UnifiedGroupSource
{
	IncludedSources = Microsoft.Graph.Security.SourceType.Mailbox,
	AdditionalData = new Dictionary<string, object>()
	{
		{"group@odata.bind", "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610"}
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Custodians["{security.ediscoveryCustodian-id}"].UnifiedGroupSources
	.Request()
	.AddAsync(unifiedGroupSource);

```