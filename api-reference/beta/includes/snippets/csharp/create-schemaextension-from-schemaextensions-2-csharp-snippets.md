---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SchemaExtension
{
	Id = "courses",
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
var result = await graphClient.SchemaExtensions.PostAsync(requestBody);


```