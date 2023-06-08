---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomSecurityAttributeDefinition
{
	AttributeSet = "Engineering",
	Description = "Active projects for user",
	IsCollection = true,
	IsSearchable = true,
	Name = "Project",
	Status = "Available",
	Type = "String",
	UsePreDefinedValuesOnly = true,
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions.PostAsync(requestBody);


```