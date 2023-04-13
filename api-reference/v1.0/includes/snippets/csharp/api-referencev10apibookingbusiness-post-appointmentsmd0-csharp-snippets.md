---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingAppointment
{
	OdataType = "#microsoft.graph.bookingAppointment",
	CustomerTimeZone = "America/Chicago",
	SmsNotificationsEnabled = true,
	EndDateTime = new DateTimeTimeZone
	{
		OdataType = "#microsoft.graph.dateTimeTimeZone",
		DateTime = "2018-05-01T12:30:00.0000000+00:00",
		TimeZone = "UTC",
	},
	IsLocationOnline = true,
	OptOutOfCustomerEmail = false,
	AnonymousJoinWebUrl = null,
	PostBuffer = TimeSpan.Parse("PT10M"),
	PreBuffer = TimeSpan.Parse("PT5M"),
	Price = 10d,
	PriceType = BookingPriceType.FixedPrice,
	Reminders = new List<BookingReminder>
	{
		new BookingReminder
		{
			OdataType = "#microsoft.graph.bookingReminder",
			Message = "This service is tomorrow",
			Offset = TimeSpan.Parse("P1D"),
			Recipients = BookingReminderRecipients.AllAttendees,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"recipients@odata.type" , "#microsoft.graph.bookingReminderRecipients"
				},
			},
		},
		new BookingReminder
		{
			OdataType = "#microsoft.graph.bookingReminder",
			Message = "Please be available to enjoy your lunch service.",
			Offset = TimeSpan.Parse("PT1H"),
			Recipients = BookingReminderRecipients.Customer,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"recipients@odata.type" , "#microsoft.graph.bookingReminderRecipients"
				},
			},
		},
		new BookingReminder
		{
			OdataType = "#microsoft.graph.bookingReminder",
			Message = "Please check traffic for next cater.",
			Offset = TimeSpan.Parse("PT2H"),
			Recipients = BookingReminderRecipients.Staff,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"recipients@odata.type" , "#microsoft.graph.bookingReminderRecipients"
				},
			},
		},
	},
	ServiceId = "57da6774-a087-4d69-b0e6-6fb82c339976",
	ServiceLocation = new Location
	{
		OdataType = "#microsoft.graph.location",
		Address = new PhysicalAddress
		{
			OdataType = "#microsoft.graph.physicalAddress",
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			State = "NY",
			Street = "123 First Avenue",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"postOfficeBox" , null
				},
				{
					"type@odata.type" , "#microsoft.graph.physicalAddressType"
				},
				{
					"type" , null
				},
			},
		},
		Coordinates = null,
		DisplayName = "Customer location",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"locationType@odata.type" , "#microsoft.graph.locationType"
			},
			{
				"uniqueIdType@odata.type" , "#microsoft.graph.locationUniqueIdType"
			},
		},
	},
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	StartDateTime = new DateTimeTimeZone
	{
		OdataType = "#microsoft.graph.dateTimeTimeZone",
		DateTime = "2018-05-01T12:00:00.0000000+00:00",
		TimeZone = "UTC",
	},
	MaximumAttendeesCount = 5,
	FilledAttendeesCount = 1,
	Customers = new List<BookingCustomerInformationBase>
	{
		new BookingCustomerInformationBase
		{
			OdataType = "#microsoft.graph.bookingCustomerInformation",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"customerId" , "7ed53fa5-9ef2-4f2f-975b-27447440bc09"
				},
				{
					"name" , "Jordan Miller"
				},
				{
					"emailAddress" , "jordanm@contoso.com"
				},
				{
					"phone" , "213-555-0199"
				},
				{
					"notes" , null
				},
				{
					"location" , new 
					{
						OdataType = "#microsoft.graph.location",
						DisplayName = "Customer",
						LocationEmailAddress = null,
						LocationUri = "",
						LocationType = null,
						UniqueId = null,
						UniqueIdType = null,
						Address = new 
						{
							OdataType = "#microsoft.graph.physicalAddress",
							Street = "",
							City = "",
							State = "",
							CountryOrRegion = "",
							PostalCode = "",
						},
						Coordinates = new 
						{
							Altitude = null,
							Latitude = null,
							Longitude = null,
							Accuracy = null,
							AltitudeAccuracy = null,
						},
					}
				},
				{
					"timeZone" , "America/Chicago"
				},
				{
					"customQuestionAnswers" , new List<>
					{
						new 
						{
							QuestionId = "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
							Question = "What is your age?",
							AnswerInputType = "text",
							AnswerOptions = new List<>
							{
							},
							IsRequired = true,
							Answer = "25",
							SelectedOptions = new List<>
							{
							},
						},
					}
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"priceType@odata.type" , "#microsoft.graph.bookingPriceType"
		},
		{
			"reminders@odata.type" , "#Collection(microsoft.graph.bookingReminder)"
		},
		{
			"customers@odata.type" , "#Collection(microsoft.graph.bookingCustomerInformation)"
		},
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments.PostAsync(requestBody);


```