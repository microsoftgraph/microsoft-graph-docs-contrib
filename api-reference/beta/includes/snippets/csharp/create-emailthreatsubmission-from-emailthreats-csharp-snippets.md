---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailThreatSubmission = new EmailUrlThreatSubmission
{
	Category = Microsoft.Graph.Security.SubmissionCategory.Spam,
	RecipientEmailAddress = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	MessageUrl = "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
};

await graphClient.Security.ThreatSubmission.EmailThreats
	.Request()
	.AddAsync(emailThreatSubmission);

```