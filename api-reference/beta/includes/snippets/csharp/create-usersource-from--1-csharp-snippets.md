---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.UserSource
{
	Email = "megan@contoso.com",
	IncludedSources = Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Mailbox | Microsoft.Graph.Beta.Models.Ediscovery.SourceType.Site,
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].UserSources.PostAsync(requestBody);


```