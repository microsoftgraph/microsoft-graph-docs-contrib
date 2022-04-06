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

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].SourceCollections["{ediscovery.sourceCollection-id}"].AdditionalSources
	.Request()
	.AddAsync(dataSource);

```