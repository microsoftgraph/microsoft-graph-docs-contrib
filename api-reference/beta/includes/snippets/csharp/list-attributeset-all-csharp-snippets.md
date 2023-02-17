---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attributeSets = await graphClient.Directory.AttributeSets
	.Request()
	.GetAsync();

```