---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var incident = await graphClient.Security.Incidents["{security.incident-id}"]
	.Request()
	.GetAsync();

```