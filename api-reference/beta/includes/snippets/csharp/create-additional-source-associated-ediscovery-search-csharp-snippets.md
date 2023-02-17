---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dataSource = new SiteSource
{
	Site = new Site
	{
		WebUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret"
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Searches["{security.ediscoverySearch-id}"].AdditionalSources
	.Request()
	.AddAsync(dataSource);

```