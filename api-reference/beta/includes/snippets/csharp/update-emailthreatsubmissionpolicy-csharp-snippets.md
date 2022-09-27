---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmissionPolicy = new Microsoft.Graph.Security.EmailThreatSubmissionPolicy
{
	IsReportToMicrosoftEnabled = false
};

await graphClient.Security.ThreatSubmission.EmailThreatSubmissionPolicies["{security.emailThreatSubmissionPolicy-id}"]
	.Request()
	.UpdateAsync(emailThreatSubmissionPolicy);

```