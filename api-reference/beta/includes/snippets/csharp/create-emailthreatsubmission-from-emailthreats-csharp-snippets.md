---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EmailThreatSubmission
{
	OdataType = "#microsoft.graph.emailUrlThreatSubmission",
	Category = Microsoft.Graph.Beta.Models.Security.SubmissionCategory.Spam,
	RecipientEmailAddress = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"messageUrl" , "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
		},
	},
};
var result = await graphClient.Security.ThreatSubmission.EmailThreats.PostAsync(requestBody);


```