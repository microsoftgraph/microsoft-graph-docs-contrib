---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var urlThreatSubmission = await graphClient.Security.ThreatSubmission.UrlThreats["{security.urlThreatSubmission-id}"]
	.Request()
	.GetAsync();

```