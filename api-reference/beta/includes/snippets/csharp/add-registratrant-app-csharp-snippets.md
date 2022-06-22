---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistrantBase = new MeetingRegistrant
{
	FirstName = "Lisa",
	LastName = "Adkins",
	Email = "lisa.adkins@contoso.com",
	CustomQuestionAnswers = new List<CustomQuestionAnswer>()
	{
		new CustomQuestionAnswer
		{
			QuestionId = "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
			Value = "No"
		},
		new CustomQuestionAnswer
		{
			QuestionId = "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
			Value = "Internet"
		}
	}
};

await graphClient.Users["{user-id}"].OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants
	.Request()
	.AddAsync(meetingRegistrantBase);

```