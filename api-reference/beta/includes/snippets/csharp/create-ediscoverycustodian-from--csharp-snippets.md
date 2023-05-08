---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryCustodian
{
	Email = "AdeleV@contoso.com",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Custodians.PostAsync(requestBody);


```