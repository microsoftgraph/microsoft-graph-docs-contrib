---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomSecurityAttributeDefinition
{
	Description = "Target completion date (YYYY/MM/DD)",
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].PatchAsync(requestBody);


```