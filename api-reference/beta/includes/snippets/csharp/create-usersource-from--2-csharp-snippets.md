---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.UserSource
{
	Email = "adelev@contoso.com",
	IncludedSources = Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Mailbox,
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].LegalHolds["{legalHold-id}"].UserSources.PostAsync(requestBody);


```