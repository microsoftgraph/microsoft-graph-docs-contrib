---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateClassificationResults;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EvaluateClassificationResultsPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		OdataType = "#microsoft.graph.security.contentInfo",
		ContentFormat = "File",
		Identifier = "c:\user\new.docx",
		State = ContentState.Rest,
		Metadata = new List<KeyValuePair>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"format@odata.type" , "#microsoft.graph.security.contentFormat"
			},
			{
				"format" , "default"
			},
			{
				"state@odata.type" , "#microsoft.graph.security.contentState"
			},
		},
	},
	ClassificationResults = new List<ClassificationResult>
	{
		new ClassificationResult
		{
			SensitiveTypeId = "50842eb7-edc8-4019-85dd-5a5c1f2bb085",
			Count = 7,
			ConfidenceLevel = 99,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateClassificationResults.PostAsEvaluateClassificationResultsPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```