---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MeetingRegistrationQuestion
{
	AnswerInputType = AnswerInputType.RadioButton,
	AnswerOptions = new List<string>
	{
		"Software Engineer",
		"Software Development Manager",
		"Product Manager",
		"Data scientist",
		"Other",
	},
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.CustomQuestions["{meetingRegistrationQuestion-id}"].PatchAsync(requestBody);


```