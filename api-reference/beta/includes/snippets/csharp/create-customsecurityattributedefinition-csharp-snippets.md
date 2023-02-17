---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition
{
	AttributeSet = "Engineering",
	Description = "Target completion date",
	IsCollection = false,
	IsSearchable = true,
	Name = "ProjectDate",
	Status = "Available",
	Type = "String",
	UsePreDefinedValuesOnly = false
};

await graphClient.Directory.CustomSecurityAttributeDefinitions
	.Request()
	.AddAsync(customSecurityAttributeDefinition);

```