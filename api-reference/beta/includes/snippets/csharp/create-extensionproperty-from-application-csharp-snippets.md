---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extensionProperty = new ExtensionProperty
{
	Name = "jobGroup",
	DataType = "String",
    isMultiValued: true,
	TargetObjects = new List<String>()
	{
		"User"
	}
};

await graphClient.Applications["{application-id}"].ExtensionProperties
	.Request()
	.AddAsync(extensionProperty);

```