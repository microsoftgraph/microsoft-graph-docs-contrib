---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Me.Tasks.Lists.AQMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNm.Tasks
	.Request()
	.GetAsync();

```