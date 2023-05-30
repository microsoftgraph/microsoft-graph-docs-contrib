---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EmailThreatSubmissionPolicy
{
	IsReportToMicrosoftEnabled = false,
};
var result = await graphClient.Security.ThreatSubmission.EmailThreatSubmissionPolicies["{emailThreatSubmissionPolicy-id}"].PatchAsync(requestBody);


```