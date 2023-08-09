---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.SourceSystemDefinition
{
	Vendor = "LMS Vendor",
};
var result = await graphClient.External.IndustryData.SourceSystems["{sourceSystemDefinition-id}"].PatchAsync(requestBody);


```