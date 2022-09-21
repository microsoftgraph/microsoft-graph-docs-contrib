---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ids = new List<String>()
{
	"39333641443238353535383731453339",
	"46333131344239353834433430454335"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].NoncustodialDataSources
	.RemoveHold(ids)
	.Request()
	.PostAsync();

```