---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistration = new MeetingRegistration
{
	Subject = "Microsoft Ignite: Day 1",
	StartDateTime = DateTimeOffset.Parse("2021-11-02T16:00:00+00:00"),
	EndDateTime = DateTimeOffset.Parse("2021-11-02T23:45:00+00:00"),
	Speakers = new List<MeetingSpeaker>()
	{
		new MeetingSpeaker
		{
			DisplayName = "Henry Ross",
			Bio = "Chairman and Chief Executive Officer"
		},
		new MeetingSpeaker
		{
			DisplayName = "Fred Ryan",
			Bio = "CVP"
		}
	}
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration
	.Request()
	.UpdateAsync(meetingRegistration);

```