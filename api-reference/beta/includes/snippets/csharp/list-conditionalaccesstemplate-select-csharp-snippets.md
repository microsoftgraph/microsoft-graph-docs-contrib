---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var templates = await graphClient.Identity.ConditionalAccess.Templates
	.Request()
	.Filter("scenarios has 'secureFoundation'")
	.Select("name,description,id,scenarios")
	.GetAsync();

```