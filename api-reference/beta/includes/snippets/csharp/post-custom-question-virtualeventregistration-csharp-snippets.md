---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VirtualEventRegistrationCustomQuestion
{
	OdataType = "#microsoft.graph.virtualEventRegistrationCustomQuestion",
	DisplayName = "What's your job position?",
	AnswerInputType = VirtualEventRegistrationQuestionAnswerInputType.MultiChoice,
	AnswerChoices = new List<string>
	{
		"Software Engineer",
		"Engineer Manager",
		"Product Manager",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].RegistrationConfiguration.Questions.PostAsync(requestBody);


```