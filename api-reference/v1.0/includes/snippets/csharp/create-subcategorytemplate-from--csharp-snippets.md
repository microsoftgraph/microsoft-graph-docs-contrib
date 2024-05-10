---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new SubcategoryTemplate
{
	OdataType = "#microsoft.graph.security.subcategoryTemplate",
	DisplayName = "Vendor Invoice",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.Categories["{categoryTemplate-id}"].Subcategories.PostAsync(requestBody);


```