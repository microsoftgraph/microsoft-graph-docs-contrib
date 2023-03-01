---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AttributeSet
{
	Description = "Attributes for engineering team",
	MaxAttributesPerSet = 20,
};
var result = await graphClient.Directory.AttributeSets["{attributeSet-id}"].PatchAsync(requestBody);


```