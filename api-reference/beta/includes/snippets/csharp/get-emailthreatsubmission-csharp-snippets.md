---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmission = await graphClient.Security.ThreatSubmission.EmailThreats["{security.emailThreatSubmission-id}"]
	.Request()
	.GetAsync();

```