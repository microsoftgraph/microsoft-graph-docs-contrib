---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var noncustodialDataSource = new Microsoft.Graph.Ediscovery.NoncustodialDataSource
{
	ApplyHoldToSource = false,
	DataSource = new SiteSource
	{
		Site = new Site
		{
			WebUrl = "https://contoso.sharepoint.com/sites/SecretSite"
		}
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].NoncustodialDataSources
	.Request()
	.AddAsync(noncustodialDataSource);

```