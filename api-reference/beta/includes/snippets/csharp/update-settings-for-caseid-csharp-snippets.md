---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.CaseSettings
{
	RedundancyDetection = new Microsoft.Graph.Beta.Models.Ediscovery.RedundancyDetectionSettings
	{
		IsEnabled = false,
		SimilarityThreshold = 70,
		MinWords = 12,
		MaxWords = 400000,
	},
	TopicModeling = new Microsoft.Graph.Beta.Models.Ediscovery.TopicModelingSettings
	{
		IsEnabled = false,
		IgnoreNumbers = false,
		TopicCount = 50,
		DynamicallyAdjustTopicCount = false,
	},
	Ocr = new Microsoft.Graph.Beta.Models.Ediscovery.OcrSettings
	{
		IsEnabled = true,
		MaxImageSize = 12000,
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Settings.PatchAsync(requestBody);


```