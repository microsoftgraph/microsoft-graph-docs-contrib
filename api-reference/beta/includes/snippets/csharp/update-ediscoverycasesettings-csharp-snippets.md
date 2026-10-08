---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EdiscoveryCaseSettings
{
	OdataType = "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/settings/$entity",
	RedundancyDetection = new RedundancyDetectionSettings
	{
		IsEnabled = true,
		SimilarityThreshold = 65,
		MinWords = 10,
		MaxWords = 500000,
	},
	TopicModeling = new TopicModelingSettings
	{
		IsEnabled = false,
		IgnoreNumbers = true,
		TopicCount = 100,
		DynamicallyAdjustTopicCount = true,
	},
	Ocr = new OcrSettings
	{
		IsEnabled = false,
		MaxImageSize = 24576,
		Timeout = TimeSpan.Parse("PT1M"),
	},
	CaseType = CaseType.Standard,
	ReviewSetSettings = ReviewSetSettings.DisableGrouping,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Settings.PatchAsync(requestBody);


```