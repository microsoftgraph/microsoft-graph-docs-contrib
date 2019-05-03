
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "samanthab@contoso.onmicrosoft.com",
	Name = "Samantha Booth",
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
	DateTime = "2017-04-15T14:00:00",
	TimeZone = "Pacific Standard Time",
};

var start = new DateTimeTimeZone
{
	DateTime = "2017-04-15T12:00:00",
	TimeZone = "Pacific Standard Time",
};

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "Does late morning work for you?",
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

await graphClient.Me.Events
	.Request()
	.AddAsync(_event);

```