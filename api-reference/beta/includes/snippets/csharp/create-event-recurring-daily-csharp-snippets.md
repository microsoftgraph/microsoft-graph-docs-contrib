---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Event
{
	Subject = "Let's go for lunch",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Does noon work for you?",
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2020-02-25T12:00:00",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2020-02-25T14:00:00",
		TimeZone = "Pacific Standard Time",
	},
	Location = new Location
	{
		DisplayName = "Harry's Bar",
	},
	Attendees = new List<Attendee>
	{
		new Attendee
		{
			EmailAddress = new EmailAddress
			{
				Address = "AlexW@contoso.OnMicrosoft.com",
				Name = "Alex Wilbur",
			},
			Type = AttendeeType.Required,
		},
	},
	Recurrence = new PatternedRecurrence
	{
		Pattern = new RecurrencePattern
		{
			Type = RecurrencePatternType.Daily,
			Interval = 1,
		},
		Range = new RecurrenceRange
		{
			Type = RecurrenceRangeType.Numbered,
			StartDate = new Date(DateTime.Parse("2020-02-25")),
			NumberOfOccurrences = 2,
		},
	},
};
var result = await graphClient.Me.Events.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```