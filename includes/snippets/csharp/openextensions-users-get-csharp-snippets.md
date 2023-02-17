---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Me
	.Request()
	.Expand("extensions")
	.Select("id,displayName,mail,mobilePhone")
	.GetAsync();

```