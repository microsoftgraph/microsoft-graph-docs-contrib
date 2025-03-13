---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new SchemaExtension
{
	Id = "graphlearn_courses",
	Description = "Graph Learn training courses extensions",
	TargetTypes = new List<string>
	{
		"Group",
	},
	Properties = new List<ExtensionSchemaProperty>
	{
		new ExtensionSchemaProperty
		{
			Name = "courseId",
			Type = "Integer",
		},
		new ExtensionSchemaProperty
		{
			Name = "courseName",
			Type = "String",
		},
		new ExtensionSchemaProperty
		{
			Name = "courseType",
			Type = "String",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.SchemaExtensions.PostAsync(requestBody);


```