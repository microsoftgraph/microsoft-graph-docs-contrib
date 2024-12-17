---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VirtualEventRegistration
{
	FirstName = "Diane",
	LastName = "Demoss",
	Email = "DianeDemoss@contoso.com",
	ExternalRegistrationInformation = new VirtualEventExternalRegistrationInformation
	{
		Referrer = "Facebook",
		RegistrationId = "myExternalRegistrationId",
	},
	PreferredTimezone = "Pacific Standard Time",
	PreferredLanguage = "en-us",
	RegistrationQuestionAnswers = new List<VirtualEventRegistrationQuestionAnswer>
	{
		new VirtualEventRegistrationQuestionAnswer
		{
			QuestionId = "95320781-96b3-4b8f-8cf8-e6561d23447a",
			Value = null,
			BooleanValue = null,
			MultiChoiceValues = new List<string>
			{
				"Seattle",
			},
		},
		new VirtualEventRegistrationQuestionAnswer
		{
			QuestionId = "4577afdb-8bee-4219-b482-04b52c6b855c",
			Value = null,
			BooleanValue = true,
			MultiChoiceValues = new List<string>
			{
			},
		},
		new VirtualEventRegistrationQuestionAnswer
		{
			QuestionId = "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
			Value = null,
			BooleanValue = null,
			MultiChoiceValues = new List<string>
			{
				"London",
				"New York City",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].Registrations.PostAsync(requestBody);


```