
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "adelev@contoso.onmicrosoft.com",
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

var end = new DateTimeTimeZone
{
	DateTime = "2019-03-15T14:00:00",
	TimeZone = "Pacific Standard Time",
};

var start = new DateTimeTimeZone
{
	DateTime = "2019-03-15T12:00:00",
	TimeZone = "Pacific Standard Time",
};

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "Does mid month work for you?",
};

var _event = new Event
{
	Subject = "Let's go for lunch",
	Body = body,
	Start = start,
	End = end,
	Location = location,
	Attendees = attendeesList,
};

await graphClient.Me.Calendars["AAMkAGViNDU7zAAAAAGtlAAA="].Events
	.Request()
	.AddAsync(_event);

```