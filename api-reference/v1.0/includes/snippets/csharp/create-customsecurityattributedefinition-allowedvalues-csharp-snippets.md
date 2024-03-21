---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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
	AllowedValues = new List<AllowedValue>
	{
		new AllowedValue
		{
			Id = "Alpine",
			IsActive = true,
		},
		new AllowedValue
		{
			Id = "Baker",
			IsActive = true,
		},
		new AllowedValue
		{
			Id = "Cascade",
			IsActive = true,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions.PostAsync(requestBody);


```