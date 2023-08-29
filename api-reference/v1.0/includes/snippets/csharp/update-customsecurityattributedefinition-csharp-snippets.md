---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomSecurityAttributeDefinition
{
	Description = "Target completion date (YYYY/MM/DD)",
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].PatchAsync(requestBody);


```