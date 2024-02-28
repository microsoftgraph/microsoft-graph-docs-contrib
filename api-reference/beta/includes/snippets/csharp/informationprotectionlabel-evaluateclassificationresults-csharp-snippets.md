---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.InformationProtection.Policy.Labels.EvaluateClassificationResults;
using Microsoft.Graph.Beta.Models;

var requestBody = new EvaluateClassificationResultsPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.InformationProtection.Policy.Labels.EvaluateClassificationResults.PostAsEvaluateClassificationResultsPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```