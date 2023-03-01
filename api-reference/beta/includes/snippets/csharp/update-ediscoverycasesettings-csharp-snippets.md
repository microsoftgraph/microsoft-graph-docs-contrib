---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryCaseSettings
{
	OdataType = "#microsoft.graph.security.ediscoveryCaseSettings",
	RedundancyDetection = new Microsoft.Graph.Beta.Models.Security.RedundancyDetectionSettings
	{
		OdataType = "microsoft.graph.security.redundancyDetectionSettings",
	},
	TopicModeling = new Microsoft.Graph.Beta.Models.Security.TopicModelingSettings
	{
		OdataType = "microsoft.graph.security.topicModelingSettings",
	},
	Ocr = new Microsoft.Graph.Beta.Models.Security.OcrSettings
	{
		OdataType = "microsoft.graph.security.ocrSettings",
	},
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Settings.PatchAsync(requestBody);


```