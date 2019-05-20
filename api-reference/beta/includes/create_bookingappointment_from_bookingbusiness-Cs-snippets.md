
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var start = new DateTimeTimeZone
{
	DateTime = "2018-05-01T15:00:00+03:00",
	TimeZone = "UTC",
};

var address = new PhysicalAddress
{
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "123 First Avenue",
	Type = null,
};

var serviceLocation = new Location
{
	Address = address,
	Coordinates = null,
	DisplayName = "Customer location",
	LocationEmailAddress = null,
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType = null,
};

var reminders = new BookingReminder
{
	Message = "Please check traffic for next cater.",
	Offset = "PT2H",
	Recipients = BookingReminderRecipients.Staff,
};

var _reminders = new BookingReminder
{
	Message = "Please be available to enjoy your lunch service.",
	Offset = "PT1H",
	Recipients = BookingReminderRecipients.Customer,
};

var __reminders = new BookingReminder
{
	Message = "This service is tomorrow",
	Offset = "P1D",
	Recipients = BookingReminderRecipients.AllAttendees,
};

var remindersList = new List<BookingReminder>();
remindersList.Add( __reminders );
remindersList.Add( _reminders );
remindersList.Add( reminders );

var invoiceDate = new DateTimeTimeZone
{
	DateTime = "2018-05-01T15:30:00+03:00",
	TimeZone = "UTC",
};

var end = new DateTimeTimeZone
{
	DateTime = "2018-05-01T15:30:00+03:00",
	TimeZone = "UTC",
};

var address = new PhysicalAddress
{
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "123 First Avenue",
	Type = null,
};

var customerLocation = new Location
{
	Address = address,
	Coordinates = null,
	DisplayName = "Customer",
	LocationEmailAddress = null,
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType = null,
};

var bookingAppointment = new BookingAppointment
{
	CustomerEmailAddress = "jordanm@contoso.com",
	CustomerLocation = customerLocation,
	CustomerName = "Jordan Miller",
	CustomerNotes = "Please be on time.",
	CustomerPhone = "213-555-0199",
	End = end,
	InvoiceAmount = 10.0,
	InvoiceDate = invoiceDate,
	InvoiceId = "1001",
	InvoiceStatus = BookingInvoiceStatus.Open,
	InvoiceUrl = "theInvoiceUrl",
	OptOutOfCustomerEmail = false,
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	Price = 10.0,
	PriceType = BookingPriceType.FixedPrice,
	Reminders = remindersList,
	ServiceId = "57da6774-a087-4d69-b0e6-6fb82c339976",
	ServiceLocation = serviceLocation,
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	Start = start,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments
	.Request()
	.AddAsync(bookingAppointment);

```