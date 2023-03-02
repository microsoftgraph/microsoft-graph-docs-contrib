---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.OnlineMeetings.CreateOrGet.CreateOrGetPostRequestBody
{
	StartDateTime = DateTimeOffset.Parse("2020-02-06T01:49:21.3524945+00:00"),
	EndDateTime = DateTimeOffset.Parse("2020-02-06T02:19:21.3524945+00:00"),
	Subject = "Create a meeting with customId provided",
	ExternalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56",
	Participants = new MeetingParticipants
	{
		Attendees = new List<MeetingParticipantInfo>
		{
			new MeetingParticipantInfo
			{
				Identity = new IdentitySet
				{
					User = new Identity
					{
						Id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000",
					},
				},
				Upn = "test1@contoso.com",
			},
		},
	},
};
var result = await graphClient.Me.OnlineMeetings.CreateOrGet.PostAsync(requestBody);


```