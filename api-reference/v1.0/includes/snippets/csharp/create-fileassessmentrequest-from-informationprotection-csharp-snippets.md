---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ThreatAssessmentRequest
{
	OdataType = "#microsoft.graph.fileAssessmentRequest",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Malware,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"fileName" , "test.txt"
		},
		{
			"contentData" , "VGhpcyBpcyBhIHRlc3QgZmlsZQ=="
		},
	},
};
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```