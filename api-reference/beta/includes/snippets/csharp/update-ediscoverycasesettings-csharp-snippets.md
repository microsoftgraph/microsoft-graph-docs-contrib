---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCaseSettings = new Microsoft.Graph.Security.EdiscoveryCaseSettings
{
	RedundancyDetection = new RedundancyDetectionSettings
	{
	},
	TopicModeling = new TopicModelingSettings
	{
	},
	Ocr = new OcrSettings
	{
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Settings
	.Request()
	.UpdateAsync(ediscoveryCaseSettings);

```