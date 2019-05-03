
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var locations = new Location
{
	DisplayName = "Home Office",
};

var coordinates = new OutlookGeoCoordinates
{
	Latitude = 47.672,
	Longitude = -102.103,
};

var address = new PhysicalAddress
{
	Street = "4567 Main St",
	City = "Redmond",
	State = "WA",
	CountryOrRegion = "US",
	PostalCode = "32008",
};

var _locations = new Location
{
	DisplayName = "Fourth Coffee",
	Address = address,
	Coordinates = coordinates,
};

var __locations = new Location
{
	DisplayName = "Conf Room 3",
};

var locationsList = new List<Location>();
locationsList.Add( __locations );
locationsList.Add( _locations );
locationsList.Add( locations );

var location = new Location
{
	DisplayName = "Conf Room 3; Fourth Coffee; Home Office",
	LocationType = LocationType.Default,
};

var emailAddress = new EmailAddress
{
	Address = "AlexW@contoso.onmicrosoft.com",
	Name = "Alex Wilber",
};

var attendees = new Attendee
{
	EmailAddress = emailAddress,
	Type = AttendeeType.Required,
};

var emailAddress = new EmailAddress
{
	Address = "DanaS@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

var _attendees = new Attendee
{
	EmailAddress = emailAddress,
	Type = AttendeeType.Required,
};

var attendeesList = new List<Attendee>();
attendeesList.Add( _attendees );
attendeesList.Add( attendees );

var end = new DateTimeTimeZone
{
	DateTime = "2017-08-30T12:00:00",
	TimeZone = "Pacific Standard Time",
};

var start = new DateTimeTimeZone
{
	DateTime = "2017-08-30T11:00:00",
	TimeZone = "Pacific Standard Time",
};

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "Let's kick-start this event planning!",
};

var _event = new Event
{
	Subject = "Plan summer company picnic",
	Body = body,
	Start = start,
	End = end,
	Attendees = attendeesList,
	Location = location,
	Locations = locationsList,
};

await graphClient.Me.Events
	.Request()
	.AddAsync(_event);

```