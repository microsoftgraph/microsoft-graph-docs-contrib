---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attributeSet = await graphClient.Directory.AttributeSets["{attributeSet-id}"]
	.Request()
	.GetAsync();

```