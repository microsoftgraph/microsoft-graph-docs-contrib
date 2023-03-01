---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Custodians.SecurityApplyHold.ApplyHoldPostRequestBody
{
	Ids = new List<string>
	{
		"7f697316-43ed-48e1-977f-261be050db93",
		"b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8",
	},
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Custodians.SecurityApplyHold.PostAsync(requestBody);


```