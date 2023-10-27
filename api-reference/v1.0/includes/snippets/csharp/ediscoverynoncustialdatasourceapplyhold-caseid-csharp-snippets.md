---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.NoncustodialDataSources.MicrosoftGraphSecurityApplyHold.ApplyHoldPostRequestBody
{
	Ids = new List<string>
	{
		"39333641443238353535383731453339",
		"46333131344239353834433430454335",
	},
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].NoncustodialDataSources.MicrosoftGraphSecurityApplyHold.PostAsync(requestBody);


```