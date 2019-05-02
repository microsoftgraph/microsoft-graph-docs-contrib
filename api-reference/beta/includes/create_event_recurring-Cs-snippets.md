
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "AdeleV@contoso.onmicrosoft.com",
	Name = "Adele Vance",
};

var attendees = new Attendee
{
	EmailAddress = emailAddress,
	Type = AttendeeType.Required,
};

var attendeesList = new List<Attendee>();
attendeesList.Add( attendees );

var location = new Location
{
	DisplayName = "Harry's Bar",
};

var range = new RecurrenceRange
{
	Type = RecurrenceRangeType.EndDate,
	StartDate = "2017-09-04",
	EndDate = "2017-12-31",
};

var daysOfWeekList = new List<DayOfWeek>();
daysOfWeekList.Add( "Monday" );

var pattern = new RecurrencePattern
{
	Type = RecurrencePatternType.Weekly,
	Interval = 1,
	DaysOfWeek = daysOfWeekList,
};

var recurrence = new PatternedRecurrence
{
	Pattern = pattern,
	Range = range,
};

var end = new DateTimeTimeZone
{
	DateTime = "2017-09-04T14:00:00",
	TimeZone = "Pacific Standard Time",
};

var start = new DateTimeTimeZone
{
	DateTime = "2017-09-04T12:00:00",
	TimeZone = "Pacific Standard Time",
};

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "Does noon time work for you?",
};

var _event = new Event
{
	Subject = "Let's go for lunch",
	Body = body,
	Start = start,
	End = end,
	Recurrence = recurrence,
	Location = location,
	Attendees = attendeesList,
};

await graphClient.Me.Events
	.Request()
	.AddAsync(_event);

```