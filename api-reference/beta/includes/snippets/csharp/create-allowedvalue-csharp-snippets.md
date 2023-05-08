---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AllowedValue
{
	Id = "Alpine",
	IsActive = true,
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].AllowedValues.PostAsync(requestBody);


```