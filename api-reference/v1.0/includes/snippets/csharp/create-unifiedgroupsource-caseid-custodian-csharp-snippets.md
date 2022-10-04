---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedGroupSource = new Microsoft.Graph.Security.UnifiedGroupSource
{
	Group = new Group
	{
		Mail = "SOCTeam@M365x809305.onmicrosoft.com"
	},
	IncludedSources = Microsoft.Graph.Security.SourceType.Mailbox | Microsoft.Graph.Security.SourceType.Site
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Custodians["{security.ediscoveryCustodian-id}"].UnifiedGroupSources
	.Request()
	.AddAsync(unifiedGroupSource);

```