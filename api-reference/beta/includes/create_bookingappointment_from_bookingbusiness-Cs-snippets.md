---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	CustomerEmailAddress = "jordanm@contoso.com",
	CustomerLocation = new Location
	{
		Address = new PhysicalAddress
		{
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "123 First Avenue",
			Type = null
		},
		Coordinates = null,
		DisplayName = "Customer",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null
	},
	CustomerName = "Jordan Miller",
	CustomerNotes = "Please be on time.",
	CustomerPhone = "213-555-0199",
	End = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T15:30:00+03:00",
		TimeZone = "UTC"
	},
	InvoiceAmount = 10.0,
	InvoiceDate = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T15:30:00+03:00",
		TimeZone = "UTC"
	},
	InvoiceId = "1001",
	InvoiceStatus = BookingInvoiceStatus.Open,
	InvoiceUrl = "theInvoiceUrl",
	OptOutOfCustomerEmail = false,
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	Price = 10.0,
	PriceType = BookingPriceType.FixedPrice,
	Reminders = new List<BookingReminder>()
	{
		new BookingReminder
		{
			Message = "This service is tomorrow",
			Offset = "P1D",
			Recipients = BookingReminderRecipients.AllAttendees
		},
		new BookingReminder
		{
			Message = "Please be available to enjoy your lunch service.",
			Offset = "PT1H",
			Recipients = BookingReminderRecipients.Customer
		},
		new BookingReminder
		{
			Message = "Please check traffic for next cater.",
			Offset = "PT2H",
			Recipients = BookingReminderRecipients.Staff
		}
	},
	ServiceId = "57da6774-a087-4d69-b0e6-6fb82c339976",
	ServiceLocation = new Location
	{
		Address = new PhysicalAddress
		{
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "123 First Avenue",
			Type = null
		},
		Coordinates = null,
		DisplayName = "Customer location",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null
	},
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	Start = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T15:00:00+03:00",
		TimeZone = "UTC"
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments
	.Request()
	.AddAsync(bookingAppointment);

```