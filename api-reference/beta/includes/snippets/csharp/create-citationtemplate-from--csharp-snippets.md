---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.CitationTemplate
{
	OdataType = "#microsoft.graph.security.citationTemplate",
	DisplayName = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	CitationUrl = "String",
	CitationJurisdiction = "String",
};
var result = await graphClient.Security.Labels.Citations.PostAsync(requestBody);


```