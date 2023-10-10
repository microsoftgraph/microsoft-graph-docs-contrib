---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EmailFileAssessmentRequest
{
	OdataType = "#microsoft.graph.emailFileAssessmentRequest",
	RecipientEmail = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Malware,
	ContentData = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
};
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```