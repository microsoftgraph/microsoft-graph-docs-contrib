---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ThreatAssessmentRequest
{
	OdataType = "#microsoft.graph.mailAssessmentRequest",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Spam,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"recipientEmail" , "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com"
		},
		{
			"messageUri" , "https://graph.microsoft.com/v1.0/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
		},
	},
};
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```