---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmissionPolicies = await graphClient.Security.ThreatSubmission.EmailThreatSubmissionPolicies
	.Request()
	.GetAsync();

```