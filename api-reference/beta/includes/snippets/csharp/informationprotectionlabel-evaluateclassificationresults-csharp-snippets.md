---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.InformationProtection.Policy.Labels.EvaluateClassificationResults.EvaluateClassificationResultsPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		OdataType = "#microsoft.graph.contentInfo",
		Format = ContentFormat.Default,
		Identifier = null,
		State = ContentState.Rest,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"format@odata.type" , "#microsoft.graph.contentFormat"
			},
			{
				"state@odata.type" , "#microsoft.graph.contentState"
			},
		},
	},
	ClassificationResults = new List<ClassificationResult>
	{
		new ClassificationResult
		{
			SensitiveTypeId = "cb353f78-2b72-4c3c-8827-92ebe4f69fdf",
			Count = 4,
			ConfidenceLevel = 75,
		},
	},
};
var result = await graphClient.InformationProtection.Policy.Labels.EvaluateClassificationResults.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```