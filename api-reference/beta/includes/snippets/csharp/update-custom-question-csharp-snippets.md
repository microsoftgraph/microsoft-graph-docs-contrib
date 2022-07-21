---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistrationQuestion = new MeetingRegistrationQuestion
{
	AnswerInputType = AnswerInputType.RadioButton,
	AnswerOptions = new List<String>()
	{
		"Software Engineer",
		"Software Development Manager",
		"Product Manager",
		"Data scientist",
		"Other"
	}
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.CustomQuestions["{meetingRegistrationQuestion-id}"]
	.Request()
	.UpdateAsync(meetingRegistrationQuestion);

```