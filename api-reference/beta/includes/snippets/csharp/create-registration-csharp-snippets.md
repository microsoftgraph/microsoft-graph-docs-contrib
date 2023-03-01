---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.OnlineMeetings.Item.Registration.RegistrationPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.meetingRegistration"
		},
		{
			"subject" , "Microsoft Ignite"
		},
		{
			"description" , "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more."
		},
		{
			"startDateTime" , "2021-11-02T08:00:00-08:00"
		},
		{
			"endDateTime" , "2021-11-04T04:00:00-08:00"
		},
		{
			"allowedRegistrant" , "everyone"
		},
		{
			"speakers" , new List<>
			{
				new 
				{
					DisplayName = "Henry Ross",
					Bio = "Chairman and Chief Executive Officer",
				},
				new 
				{
					DisplayName = "Hailey Clark",
					Bio = "EVP",
				},
			}
		},
		{
			"customQuestions" , new List<>
			{
				new 
				{
					DisplayName = "Are you a developer?",
					AnswerInputType = "radioButton",
					AnswerOptions = new List<string>
					{
						"Yes",
						"No",
					},
					IsRequired = true,
				},
				new 
				{
					DisplayName = "Where did you hear about us?",
					AnswerInputType = "text",
					IsRequired = false,
				},
			}
		},
	},
};
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.PostAsync(requestBody);


```