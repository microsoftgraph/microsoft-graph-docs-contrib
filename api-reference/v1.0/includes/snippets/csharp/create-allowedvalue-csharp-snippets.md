---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AllowedValue
{
	Id = "Alpine",
	IsActive = true,
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].AllowedValues.PostAsync(requestBody);


```