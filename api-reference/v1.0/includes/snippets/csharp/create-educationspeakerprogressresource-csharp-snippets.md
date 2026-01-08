---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = true,
	Resource = new EducationSpeakerProgressResource
	{
		OdataType = "microsoft.graph.educationSpeakerProgressResource",
		DisplayName = "speakerProgressTestResource",
		RecordingTimeLimitInMinutes = 5,
		ShowRehearsalReportToStudentBeforeMediaUpload = true,
		MaxRecordingAttempts = 1,
		IsVideoRequired = true,
		IsAiFeedbackEnabled = true,
		PresentationTitle = "speakerProgressTestResource",
		SpokenLanguageLocale = "en-US",
		SpeakerCoachSettings = new EducationSpeakerCoachSettings
		{
			DeliverySettings = new EducationSpeakerCoachDeliverySettings
			{
				IsPronunciationEnabled = true,
			},
		},
		AiFeedbackCriteria = new EducationAiFeedbackCriteria
		{
			SpeechType = EducationSpeechType.Informative,
			AiFeedbackSettings = new EducationAiFeedbackSettings
			{
				DeliverySettings = new EducationAiFeedbackDeliverySettings
				{
					IsStyleEnabled = true,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```