---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attributeSet = new AttributeSet
{
	Id = "Engineering",
	Description = "Attributes for engineering team",
	MaxAttributesPerSet = 25
};

await graphClient.Directory.AttributeSets
	.Request()
	.AddAsync(attributeSet);

```