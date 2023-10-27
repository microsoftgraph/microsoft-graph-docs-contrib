---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityPurgeData.PurgeDataPostRequestBody
{
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityPurgeData.PostAsync(requestBody);


```