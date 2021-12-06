---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attributeSet = new AttributeSet
{
	Description = "Attributes for engineering team",
	MaxAttributesPerSet = 20
};

await graphClient.Directory.AttributeSets["{attributeSet-id}"]
	.Request()
	.UpdateAsync(attributeSet);

```