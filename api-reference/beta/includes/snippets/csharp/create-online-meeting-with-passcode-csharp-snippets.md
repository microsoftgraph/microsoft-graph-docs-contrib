---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnlineMeeting
{
	StartDateTime = DateTimeOffset.Parse("2019-07-12T14:30:34.2444915-07:00"),
	EndDateTime = DateTimeOffset.Parse("2019-07-12T15:00:34.2464912-07:00"),
	Subject = "User meeting",
	JoinMeetingIdSettings = new JoinMeetingIdSettings
	{
		IsPasscodeRequired = true,
	},
};
var result = await graphClient.Me.OnlineMeetings.PostAsync(requestBody);


```