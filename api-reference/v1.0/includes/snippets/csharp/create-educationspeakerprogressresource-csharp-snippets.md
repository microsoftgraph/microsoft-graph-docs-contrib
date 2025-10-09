---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = true,
	Resource = new EducationResource
	{
		OdataType = "microsoft.graph.educationSpeakerProgressResource",
		DisplayName = "speakerProgressTestResource",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"recordingTimeLimitInMinutes" , 5
			},
			{
				"showRehearsalReportToStudentBeforeMediaUpload" , true
			},
			{
				"maxRecordingAttempts" , 1
			},
			{
				"isVideoRequired" , true
			},
			{
				"isAiFeedbackEnabled" , true
			},
			{
				"presentationTitle" , "speakerProgressTestResource"
			},
			{
				"spokenLanguageLocale" , "en-US"
			},
			{
				"speakerCoachSettings" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"deliverySettings", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"isPronunciationEnabled", new UntypedBoolean(true)
							},
						})
					},
				})
			},
			{
				"aiFeedbackCriteria" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"speechType", new UntypedString("informative")
					},
					{
						"aiFeedbackSettings", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"deliverySettings", new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"isStyleEnabled", new UntypedBoolean(true)
									},
								})
							},
						})
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```