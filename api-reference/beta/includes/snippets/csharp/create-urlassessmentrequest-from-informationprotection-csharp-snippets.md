---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UrlAssessmentRequest
{
	OdataType = "#microsoft.graph.urlAssessmentRequest",
	Url = "http://test.com",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Phishing,
};
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```