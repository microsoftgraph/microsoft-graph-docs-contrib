
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new Identity
{
	Id = "550fae72-d251-43ec-868c-373732c2704f",
};

var identity = new IdentitySet
{
	User = user,
};

var organizer = new MeetingParticipantInfo
{
	Identity = identity,
};

var participants = new MeetingParticipants
{
	Organizer = organizer,
};

var OnlineMeeting = new OnlineMeeting
{
	MeetingType = MeetingType.MeetNow,
	Participants = participants,
	Subject = "subject-value",
};

await graphClient.App.OnlineMeetings
	.Request()
	.AddAsync(OnlineMeeting);

```