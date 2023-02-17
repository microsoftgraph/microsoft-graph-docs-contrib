---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtension = new SchemaExtension
{
	Owner = "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa",
	Properties = new List<ExtensionSchemaProperty>()
	{
		new ExtensionSchemaProperty
		{
			Name = "courseId",
			Type = "Integer"
		},
		new ExtensionSchemaProperty
		{
			Name = "courseName",
			Type = "String"
		},
		new ExtensionSchemaProperty
		{
			Name = "courseType",
			Type = "String"
		},
		new ExtensionSchemaProperty
		{
			Name = "courseSupervisors",
			Type = "String"
		}
	}
};

await graphClient.SchemaExtensions["{schemaExtension-id}"]
	.Request()
	.UpdateAsync(schemaExtension);

```