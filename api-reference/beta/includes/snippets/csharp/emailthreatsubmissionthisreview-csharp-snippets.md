---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var category = "phishing";

await graphClient.Security.ThreatSubmission.EmailThreats["{security.emailThreatSubmission-id}"]
	.Review(category)
	.Request()
	.PostAsync();

```