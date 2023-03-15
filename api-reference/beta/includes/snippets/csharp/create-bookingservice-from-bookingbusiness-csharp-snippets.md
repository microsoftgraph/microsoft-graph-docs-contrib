---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingService
{
	OdataType = "#microsoft.graph.bookingService",
	DefaultDuration = TimeSpan.Parse("PT1H30M"),
	DefaultLocation = new Location
	{
		OdataType = "#microsoft.graph.location",
		Address = new PhysicalAddress
		{
			OdataType = "#microsoft.graph.physicalAddress",
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "4567 First Street",
			Type = null,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"type@odata.type" , "#microsoft.graph.physicalAddressType"
				},
			},
		},
		Coordinates = null,
		DisplayName = "Contoso Lunch Delivery",
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
	DefaultPrice = 10d,
	DefaultPriceType = BookingPriceType.FixedPrice,
	DefaultReminders = new List<BookingReminder>
	{
		new BookingReminder
		{
			OdataType = "#microsoft.graph.bookingReminder",
			Message = "Please be reminded that this service is tomorrow.",
			Offset = TimeSpan.Parse("P1D"),
			Recipients = BookingReminderRecipients.AllAttendees,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"recipients@odata.type" , "#microsoft.graph.bookingReminderRecipients"
				},
			},
		},
	},
	Description = "Individual bento box lunch delivery",
	DisplayName = "Bento",
	IsLocationOnline = true,
	SmsNotificationsEnabled = true,
	LanguageTag = "en-US",
	IsHiddenFromCustomers = false,
	Notes = "Home-cooked special",
	PostBuffer = TimeSpan.Parse("PT10M"),
	PreBuffer = TimeSpan.Parse("PT5M"),
	SchedulingPolicy = new BookingSchedulingPolicy
	{
		OdataType = "#microsoft.graph.bookingSchedulingPolicy",
		AllowStaffSelection = true,
		MaximumAdvance = TimeSpan.Parse("P10D"),
		MinimumLeadTime = TimeSpan.Parse("PT10H"),
		SendConfirmationsToOwner = true,
		TimeSlotInterval = TimeSpan.Parse("PT1H"),
	},
	StaffMemberIds = new List<string>
	{
		"d90d1e8c-5cfe-48cf-a2d5-966267375b6a",
		"2f5f8794-0b29-45b5-b56a-2eb5ff7aa880",
	},
	IsAnonymousJoinEnabled = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"defaultPriceType@odata.type" , "#microsoft.graph.bookingPriceType"
		},
		{
			"defaultReminders@odata.type" , "#Collection(microsoft.graph.bookingReminder)"
		},
		{
			"staffMemberIds@odata.type" , "#Collection(String)"
		},
	},
};
var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Services.PostAsync(requestBody);


```