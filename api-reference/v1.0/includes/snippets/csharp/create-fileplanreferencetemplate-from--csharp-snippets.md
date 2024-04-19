---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new FilePlanReferenceTemplate
{
	OdataType = "#microsoft.graph.security.filePlanReferenceTemplate",
	DisplayName = "FIN 01-02-001",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.FilePlanReferences.PostAsync(requestBody);


```