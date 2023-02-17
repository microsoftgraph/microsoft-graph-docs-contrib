---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistrationQuestion = new MeetingRegistrationQuestion
{
	DisplayName = "What's your job position?",
	IsRequired = false,
	AnswerInputType = AnswerInputType.Text
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.CustomQuestions
	.Request()
	.AddAsync(meetingRegistrationQuestion);

```