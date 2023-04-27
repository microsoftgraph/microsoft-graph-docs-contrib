---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomSecurityAttributeDefinition
{
	AttributeSet = "Engineering",
	Description = "Target completion date",
	IsCollection = false,
	IsSearchable = true,
	Name = "ProjectDate",
	Status = "Available",
	Type = "String",
	UsePreDefinedValuesOnly = false,
};
var result = await graphClient.Directory.CustomSecurityAttributeDefinitions.PostAsync(requestBody);


```