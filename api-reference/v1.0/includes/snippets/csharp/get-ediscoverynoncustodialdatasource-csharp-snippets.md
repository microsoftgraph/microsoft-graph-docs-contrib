---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryNoncustodialDataSource = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].NoncustodialDataSources["{security.ediscoveryNoncustodialDataSource-id}"]
	.Request()
	.Expand("dataSource")
	.GetAsync();

```