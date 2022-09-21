---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var urlThreats = await graphClient.Security.ThreatSubmission.UrlThreats
	.Request()
	.GetAsync();

```