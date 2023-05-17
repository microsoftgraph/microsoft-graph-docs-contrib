---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MeetingRegistrantBase
{
	OdataType = "#microsoft.graph.meetingRegistrant",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"firstName" , "Frederick"
		},
		{
			"lastName" , "Cormier"
		},
		{
			"email" , "frederick.cormier@contoso.com"
		},
		{
			"customQuestionAnswers" , new List<>
			{
				new 
				{
					QuestionId = "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
					Value = "No",
				},
				new 
				{
					QuestionId = "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
					Value = "Internet",
				},
			}
		},
	},
};
var result = await graphClient.Users["{user-id}"].OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants.PostAsync(requestBody);


```