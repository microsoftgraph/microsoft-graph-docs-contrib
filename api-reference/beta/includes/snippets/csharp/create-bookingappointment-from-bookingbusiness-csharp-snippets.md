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
			Type = null,
			AdditionalData = new Dictionary<string, object>()
			{
				{"type@odata.type", "#microsoft.graph.physicalAddressType"}
			}
		},
		Coordinates = null,
		DisplayName = "Customer",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null,
		AdditionalData = new Dictionary<string, object>()
		{
			{"locationType@odata.type", "#microsoft.graph.locationType"},
			{"uniqueIdType@odata.type", "#microsoft.graph.locationUniqueIdType"}
		}
	},
	CustomerName = "Jordan Miller",
	CustomerNotes = "Please be on time.",
	CustomerPhone = "213-555-0199",
	CustomerTimeZone = "America/Chicago",
	SmsNotificationsEnabled = true,
	End = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceAmount = 10,
	InvoiceDate = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceId = "1001",
	InvoiceStatus = BookingInvoiceStatus.Open,
	InvoiceUrl = "theInvoiceUrl",
	IsLocationOnline = true,
	OptOutOfCustomerEmail = false,
	AnonymousJoinWebUrl = null,
	PostBuffer = new Duration("PT10M"),
	PreBuffer = new Duration("PT5M"),
	Price = 10,
	PriceType = BookingPriceType.FixedPrice,
	Reminders = new List<BookingReminder>()
	{
		new BookingReminder
		{
			Message = "This service is tomorrow",
			Offset = new Duration("P1D"),
			Recipients = BookingReminderRecipients.AllAttendees,
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type", "#microsoft.graph.bookingReminderRecipients"}
			}
		},
		new BookingReminder
		{
			Message = "Please be available to enjoy your lunch service.",
			Offset = new Duration("PT1H"),
			Recipients = BookingReminderRecipients.Customer,
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type", "#microsoft.graph.bookingReminderRecipients"}
			}
		},
		new BookingReminder
		{
			Message = "Please check traffic for next cater.",
			Offset = new Duration("PT2H"),
			Recipients = BookingReminderRecipients.Staff,
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type", "#microsoft.graph.bookingReminderRecipients"}
			}
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
			Type = null,
			AdditionalData = new Dictionary<string, object>()
			{
				{"type@odata.type", "#microsoft.graph.physicalAddressType"}
			}
		},
		Coordinates = null,
		DisplayName = "Customer location",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null,
		AdditionalData = new Dictionary<string, object>()
		{
			{"locationType@odata.type", "#microsoft.graph.locationType"},
			{"uniqueIdType@odata.type", "#microsoft.graph.locationUniqueIdType"}
		}
	},
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	Start = new DateTimeTimeZone
	{
		DateTime = "2018-05-01T12:00:00+00:00",
		TimeZone = "UTC"
	},
	MaximumAttendeesCount = 5,
	FilledAttendeesCount = 1,
	Customers = new List<BookingCustomerInformationBase>()
	{
		new BookingCustomerInformation
		{
			CustomerId = "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
			Name = "Jordan Miller",
			EmailAddress = "jordanm@contoso.com",
			Phone = "213-555-0199",
			Notes = null,
			Location = new Location
			{
				DisplayName = "Customer",
				LocationEmailAddress = null,
				LocationUri = "",
				LocationType = null,
				UniqueId = null,
				UniqueIdType = null,
				Address = new PhysicalAddress
				{
					Type = PhysicalAddressType.Home,
					PostOfficeBox = "",
					Street = "",
					City = "",
					State = "",
					CountryOrRegion = "",
					PostalCode = ""
				},
				Coordinates = new OutlookGeoCoordinates
				{
					Altitude = null,
					Latitude = null,
					Longitude = null,
					Accuracy = null,
					AltitudeAccuracy = null
				}
			},
			TimeZone = "America/Chicago",
			CustomQuestionAnswers = new List<BookingQuestionAnswer>()
			{
				new BookingQuestionAnswer
				{
					QuestionId = "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
					Question = "What is your age",
					AnswerInputType = AnswerInputType.Text,
					AnswerOptions = new List<String>()
					{
					},
					IsRequired = true,
					Answer = "25",
					SelectedOptions = new List<String>()
					{
					}
				}
			}
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"invoiceStatus@odata.type", "#microsoft.graph.bookingInvoiceStatus"},
		{"priceType@odata.type", "#microsoft.graph.bookingPriceType"},
		{"reminders@odata.type", "#Collection(microsoft.graph.bookingReminder)"}
	}
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Appointments
	.Request()
	.AddAsync(bookingAppointment);

```