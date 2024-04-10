---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new CitationTemplate
{
	OdataType = "#microsoft.graph.security.citationTemplate",
	DisplayName = "Contoso Company Policy",
	CitationUrl = "www.citationUrl.com",
	CitationJurisdiction = "Contoso",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.Citations.PostAsync(requestBody);


```