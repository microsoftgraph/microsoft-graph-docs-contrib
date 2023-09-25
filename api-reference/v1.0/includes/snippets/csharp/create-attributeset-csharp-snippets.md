---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AttributeSet
{
	Id = "Engineering",
	Description = "Attributes for engineering team",
	MaxAttributesPerSet = 25,
};
var result = await graphClient.Directory.AttributeSets.PostAsync(requestBody);


```