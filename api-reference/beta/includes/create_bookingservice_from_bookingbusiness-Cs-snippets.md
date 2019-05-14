
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var staffMemberIdsList = new List<String>();
staffMemberIdsList.Add( "d90d1e8c-5cfe-48cf-a2d5-966267375b6a" );
staffMemberIdsList.Add( "2f5f8794-0b29-45b5-b56a-2eb5ff7aa880" );

var schedulingPolicy = new BookingSchedulingPolicy
{
	AllowStaffSelection = true,
	MaximumAdvance = "P10D",
	MinimumLeadTime = "PT10H",
	SendConfirmationsToOwner = true,
	TimeSlotInterval = "PT1H",
};

var defaultReminders = new BookingReminder
{
	Message = "Please be reminded that this service is tomorrow.",
	Offset = "P1D",
	Recipients = BookingReminderRecipients.AllAttendees,
};

var defaultRemindersList = new List<BookingReminder>();
defaultRemindersList.Add( defaultReminders );

var address = new PhysicalAddress
{
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "4567 First Street",
	Type = null,
};

var defaultLocation = new Location
{
	Address = address,
	Coordinates = null,
	DisplayName = "Contoso Lunch Delivery",
	LocationEmailAddress = null,
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType = null,
};

var bookingService = new BookingService
{
	DefaultDuration = "PT1H30M",
	DefaultLocation = defaultLocation,
	DefaultPrice = 10.0,
	DefaultPriceType = BookingPriceType.FixedPrice,
	DefaultReminders = defaultRemindersList,
	Description = "Individual bento box lunch delivery",
	DisplayName = "Bento",
	IsHiddenFromCustomers = false,
	Notes = "Home-cooked special",
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	SchedulingPolicy = schedulingPolicy,
	StaffMemberIds = staffMemberIdsList,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services
	.Request()
	.AddAsync(bookingService);

```