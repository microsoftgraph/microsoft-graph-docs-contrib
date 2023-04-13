---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fileThreatSubmission = await graphClient.Security.ThreatSubmission.FileThreats["{security.fileThreatSubmission-id}"]
	.Request()
	.GetAsync();

```