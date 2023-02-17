---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreats = await graphClient.Security.ThreatSubmission.EmailThreats
	.Request()
	.GetAsync();

```