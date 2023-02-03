---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryHoldPolicy = new Microsoft.Graph.Security.EdiscoveryHoldPolicy
{
	Displayname = "My legalHold with sources",
	Description = "Created from Graph API",
	AdditionalData = new Dictionary<string, object>()
	{
		{"userSources@odata.bind", "[{\"@odata.type\":\"microsoft.graph.security.userSource\",\"email\":\"SalesTeam@M365x809305.OnMicrosoft.com\"}]"},
		{"siteSources@odata.bind", "[{\"@odata.type\":\"microsoft.graph.security.siteSource\",\"site\":{\"webUrl\":\"https://m365x809305.sharepoint.com/sites/Design-topsecret\"}}]"}
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].LegalHolds
	.Request()
	.AddAsync(ediscoveryHoldPolicy);

```