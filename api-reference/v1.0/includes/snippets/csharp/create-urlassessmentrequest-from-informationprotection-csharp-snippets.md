---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ThreatAssessmentRequest
{
	OdataType = "#microsoft.graph.urlAssessmentRequest",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Phishing,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"url" , "http://test.com"
		},
	},
};
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```