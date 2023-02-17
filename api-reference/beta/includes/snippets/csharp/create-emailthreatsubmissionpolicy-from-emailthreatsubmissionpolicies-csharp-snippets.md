---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmissionPolicy = new Microsoft.Graph.Security.EmailThreatSubmissionPolicy
{
	IsReportToMicrosoftEnabled = true
};

await graphClient.Security.ThreatSubmission.EmailThreatSubmissionPolicies
	.Request()
	.AddAsync(emailThreatSubmissionPolicy);

```