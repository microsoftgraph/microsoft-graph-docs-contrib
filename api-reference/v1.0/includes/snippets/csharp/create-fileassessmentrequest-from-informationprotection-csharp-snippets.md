---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new FileAssessmentRequest
{
	OdataType = "#microsoft.graph.fileAssessmentRequest",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Malware,
	FileName = "test.txt",
	ContentData = "VGhpcyBpcyBhIHRlc3QgZmlsZQ==",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.InformationProtection.ThreatAssessmentRequests.PostAsync(requestBody);


```