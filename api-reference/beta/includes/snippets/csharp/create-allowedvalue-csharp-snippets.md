---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var allowedValue = new AllowedValue
{
	Id = "Alpine",
	IsActive = true
};

await graphClient.Directory.CustomSecurityAttributeDefinitions["{customSecurityAttributeDefinition-id}"].AllowedValues
	.Request()
	.AddAsync(allowedValue);

```