---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.FindMeetingTimes.FindMeetingTimesPostRequestBody
{
	Attendees = new List<AttendeeBase>
	{
		new AttendeeBase
		{
			Type = AttendeeType.Required,
			EmailAddress = new EmailAddress
			{
				Name = "Alex Wilbur",
				Address = "alexw@contoso.onmicrosoft.com",
			},
		},
	},
	LocationConstraint = new LocationConstraint
	{
		IsRequired = false,
		SuggestLocation = false,
		Locations = new List<LocationConstraintItem>
		{
			new LocationConstraintItem
			{
				ResolveAvailability = false,
				DisplayName = "Conf room Hood",
			},
		},
	},
	TimeConstraint = new TimeConstraint
	{
		ActivityDomain = ActivityDomain.Work,
		TimeSlots = new List<TimeSlot>
		{
			new TimeSlot
			{
				Start = new DateTimeTimeZone
				{
					DateTime = "2019-04-16T09:00:00",
					TimeZone = "Pacific Standard Time",
				},
				End = new DateTimeTimeZone
				{
					DateTime = "2019-04-18T17:00:00",
					TimeZone = "Pacific Standard Time",
				},
			},
		},
	},
	IsOrganizerOptional = false,
	MeetingDuration = TimeSpan.Parse("PT1H"),
	ReturnSuggestionReasons = true,
	MinimumAttendeePercentage = "100",
};
var result = await graphClient.Me.FindMeetingTimes.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```