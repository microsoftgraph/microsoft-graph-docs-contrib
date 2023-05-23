---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExtensionProperty
{
	Name = "jobGroup",
	DataType = "String",
	TargetObjects = new List<string>
	{
		"User",
	},
};
var result = await graphClient.Applications["{application-id}"].ExtensionProperties.PostAsync(requestBody);


```