---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.UserSource
{
	Email = "admin@M365x809305.onmicrosoft.com",
	IncludedSources = Microsoft.Graph.Beta.Models.Security.SourceType.Mailbox | Microsoft.Graph.Beta.Models.Security.SourceType.Site,
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Custodians["{ediscoveryCustodian-id}"].UserSources.PostAsync(requestBody);


```