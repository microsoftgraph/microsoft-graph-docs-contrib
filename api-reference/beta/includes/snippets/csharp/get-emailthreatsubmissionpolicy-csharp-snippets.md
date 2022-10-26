---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmissionPolicy = await graphClient.Security.ThreatSubmission.EmailThreatSubmissionPolicies["{security.emailThreatSubmissionPolicy-id}"]
	.Request()
	.GetAsync();

```