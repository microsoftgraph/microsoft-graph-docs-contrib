---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fileThreats = await graphClient.Security.ThreatSubmission.FileThreats
	.Request()
	.GetAsync();

```