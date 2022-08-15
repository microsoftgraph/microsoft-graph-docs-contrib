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
	UsePreDefinedValuesOnly = true,
	AllowedValues = new CustomSecurityAttributeDefinitionAllowedValuesCollectionPage()
	{
		new AllowedValue
		{
			Id = "Alpine",
			IsActive = true
		},
		new AllowedValue
		{
			Id = "Baker",
			IsActive = true
		},
		new AllowedValue
		{
			Id = "Cascade",
			IsActive = true
		}
	}
};

await graphClient.Directory.CustomSecurityAttributeDefinitions
	.Request()
	.AddAsync(customSecurityAttributeDefinition);

```