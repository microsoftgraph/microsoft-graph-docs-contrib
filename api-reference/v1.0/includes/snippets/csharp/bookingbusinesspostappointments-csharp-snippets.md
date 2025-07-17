---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new BookingAppointment
{
	OdataType = "#microsoft.graph.bookingAppointment",
	CustomerTimeZone = "America/Chicago",
	CustomerName = "Jordan Miller",
	CustomerEmailAddress = "jordanm@contoso.com",
	CustomerPhone = "213-555-0199",
	CustomerNotes = null,
	SmsNotificationsEnabled = true,
	IsCustomerAllowedToManageBooking = true,
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
	StaffMemberIds = new List<string>
	{
		"8ee1c803-a1fa-406d-8259-7ab53233f148",
	},
	MaximumAttendeesCount = 5,
	FilledAttendeesCount = 1,
	Customers = new List<BookingCustomerInformationBase>
	{
		new BookingCustomerInformation
		{
			OdataType = "#microsoft.graph.bookingCustomerInformation",
			CustomerId = "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
			Name = "Jordan Miller",
			EmailAddress = "jordanm@contoso.com",
			Phone = "213-555-0199",
			Notes = null,
			Location = new Location
			{
				OdataType = "#microsoft.graph.location",
				DisplayName = "Customer",
				LocationEmailAddress = null,
				LocationUri = "",
				LocationType = null,
				UniqueId = null,
				UniqueIdType = null,
				Address = new PhysicalAddress
				{
					OdataType = "#microsoft.graph.physicalAddress",
					Street = "",
					City = "",
					State = "",
					CountryOrRegion = "",
					PostalCode = "",
				},
				Coordinates = new OutlookGeoCoordinates
				{
					Altitude = null,
					Latitude = null,
					Longitude = null,
					Accuracy = null,
					AltitudeAccuracy = null,
				},
			},
			TimeZone = "America/Chicago",
			CustomQuestionAnswers = new List<BookingQuestionAnswer>
			{
				new BookingQuestionAnswer
				{
					QuestionId = "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
					Question = "What is your age?",
					AnswerInputType = AnswerInputType.Text,
					AnswerOptions = new List<string>
					{
					},
					IsRequired = true,
					Answer = "25",
					SelectedOptions = new List<string>
					{
					},
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"end" , new DateTimeTimeZone
			{
				OdataType = "#microsoft.graph.dateTimeTimeZone",
				DateTime = "2018-05-01T12:30:00.0000000+00:00",
				TimeZone = "UTC",
			}
		},
		{
			"priceType@odata.type" , "#microsoft.graph.bookingPriceType"
		},
		{
			"reminders@odata.type" , "#Collection(microsoft.graph.bookingReminder)"
		},
		{
			"start" , new DateTimeTimeZone
			{
				OdataType = "#microsoft.graph.dateTimeTimeZone",
				DateTime = "2018-05-01T12:00:00.0000000+00:00",
				TimeZone = "UTC",
			}
		},
		{
			"customers@odata.type" , "#Collection(microsoft.graph.bookingCustomerInformation)"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments.PostAsync(requestBody);


```