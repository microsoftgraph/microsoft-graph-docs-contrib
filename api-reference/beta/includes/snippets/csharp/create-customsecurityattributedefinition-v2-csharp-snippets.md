---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition
{
	AttributeSet = "Engineering",
	Description = "Active projects for user",
	IsCollection = true,
	IsSearchable = true,
	Name = "Project",
	Status = "Available",
	Type = "String",
	UsePreDefinedValuesOnly = true
};

await graphClient.Directory.CustomSecurityAttributeDefinitions
	.Request()
	.AddAsync(customSecurityAttributeDefinition);

```