---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dataSource = new SiteSource
{
	Site = new Site
	{
		WebUrl = "https://contoso.sharepoint.com/sites/SecretSite"
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Searches["{security.ediscoverySearch-id}"].AdditionalSources
	.Request()
	.AddAsync(dataSource);

```