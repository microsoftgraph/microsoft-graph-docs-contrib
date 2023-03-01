---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExtensionProperty
{
	Name = "jobGroupTracker",
	DataType = "String",
	TargetObjects = new List<string>
	{
		"User",
	},
};
var result = await graphClient.Applications["{application-id}"].ExtensionProperties.PostAsync(requestBody);


```