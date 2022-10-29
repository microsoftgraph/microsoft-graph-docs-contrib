---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sites = await graphClient.Sites["{site-id}"]
	.Request()
	.Select("Settings")
	.GetAsync();

var settings = sites.Settings;

```