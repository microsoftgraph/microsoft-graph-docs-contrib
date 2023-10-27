---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.UserSource
{
	OdataType = "microsoft.graph.ediscovery.userSource",
	Email = "badguy@contoso.com",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].SourceCollections["{sourceCollection-id}"].AdditionalSources.PostAsync(requestBody);


```