---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var urlThreatSubmission = new UrlThreatSubmission
{
	Category = Microsoft.Graph.Security.SubmissionCategory.Phishing,
	WebUrl = "http://phishing.contoso.com"
};

await graphClient.Security.ThreatSubmission.UrlThreats
	.Request()
	.AddAsync(urlThreatSubmission);

```