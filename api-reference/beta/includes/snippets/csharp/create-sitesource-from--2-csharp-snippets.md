---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteSource = new Microsoft.Graph.Ediscovery.SiteSource
{
	Site = new Site
	{
		WebUrl = "https://contoso.sharepoint.com/sites/SecretSite"
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].LegalHolds["{ediscovery.legalHold-id}"].SiteSources
	.Request()
	.AddAsync(siteSource);

```