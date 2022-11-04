---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteSource = new Microsoft.Graph.Security.SiteSource
{
	Site = new Site
	{
		WebUrl = "https://m365x809305.sharepoint.com/sites/Retail"
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].LegalHolds["{security.ediscoveryHoldPolicy-id}"].SiteSources
	.Request()
	.AddAsync(siteSource);

```