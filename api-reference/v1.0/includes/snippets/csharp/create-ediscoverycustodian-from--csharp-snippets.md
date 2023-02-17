---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCustodian = new Microsoft.Graph.Security.EdiscoveryCustodian
{
	Email = "AdeleV@contoso.com"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Custodians
	.Request()
	.AddAsync(ediscoveryCustodian);

```