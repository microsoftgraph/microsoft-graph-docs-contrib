---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MeetingRegistration
{
	Subject = "Microsoft Ignite: Day 1",
	StartDateTime = DateTimeOffset.Parse("2021-11-02T08:00:00-08:00"),
	EndDateTime = DateTimeOffset.Parse("2021-11-02T15:45:00-08:00"),
	Speakers = new List<MeetingSpeaker>
	{
		new MeetingSpeaker
		{
			DisplayName = "Henry Ross",
			Bio = "Chairman and Chief Executive Officer",
		},
		new MeetingSpeaker
		{
			DisplayName = "Fred Ryan",
			Bio = "CVP",
		},
	},
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.PatchAsync(requestBody);


```