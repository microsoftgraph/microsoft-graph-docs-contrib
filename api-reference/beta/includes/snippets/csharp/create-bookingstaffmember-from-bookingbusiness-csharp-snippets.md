---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingStaffMember
{
	OdataType = "#microsoft.graph.bookingStaffMember",
	ColorIndex = 1,
	DisplayName = "Dana Swope",
	EmailAddress = "danas@contoso.com",
	Role = BookingStaffRole.ExternalGuest,
	TimeZone = "America/Chicago",
	UseBusinessHours = true,
	WorkingHours = new List<BookingWorkHours>
	{
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
				new BookingWorkTimeSlot
				{
					OdataType = "#microsoft.graph.bookingWorkTimeSlot",
					End = new Time(DateTime.Parse("17:00:00.0000000")),
					Start = new Time(DateTime.Parse("08:00:00.0000000")),
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"day@odata.type" , "#microsoft.graph.dayOfWeek"
				},
				{
					"timeSlots@odata.type" , "#Collection(microsoft.graph.bookingWorkTimeSlot)"
				},
			},
		},
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Tuesday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
				new BookingWorkTimeSlot
				{
					OdataType = "#microsoft.graph.bookingWorkTimeSlot",
					End = new Time(DateTime.Parse("17:00:00.0000000")),
					Start = new Time(DateTime.Parse("08:00:00.0000000")),
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"day@odata.type" , "#microsoft.graph.dayOfWeek"
				},
				{
					"timeSlots@odata.type" , "#Collection(microsoft.graph.bookingWorkTimeSlot)"
				},
			},
		},
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Wednesday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
				new BookingWorkTimeSlot
				{
					OdataType = "#microsoft.graph.bookingWorkTimeSlot",
					End = new Time(DateTime.Parse("17:00:00.0000000")),
					Start = new Time(DateTime.Parse("08:00:00.0000000")),
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"day@odata.type" , "#microsoft.graph.dayOfWeek"
				},
				{
					"timeSlots@odata.type" , "#Collection(microsoft.graph.bookingWorkTimeSlot)"
				},
			},
		},
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Thursday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
				new BookingWorkTimeSlot
				{
					OdataType = "#microsoft.graph.bookingWorkTimeSlot",
					End = new Time(DateTime.Parse("17:00:00.0000000")),
					Start = new Time(DateTime.Parse("08:00:00.0000000")),
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"day@odata.type" , "#microsoft.graph.dayOfWeek"
				},
				{
					"timeSlots@odata.type" , "#Collection(microsoft.graph.bookingWorkTimeSlot)"
				},
			},
		},
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Friday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
				new BookingWorkTimeSlot
				{
					OdataType = "#microsoft.graph.bookingWorkTimeSlot",
					End = new Time(DateTime.Parse("17:00:00.0000000")),
					Start = new Time(DateTime.Parse("08:00:00.0000000")),
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"day@odata.type" , "#microsoft.graph.dayOfWeek"
				},
				{
					"timeSlots@odata.type" , "#Collection(microsoft.graph.bookingWorkTimeSlot)"
				},
			},
		},
	},
	IsEmailNotificationEnabled = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"role@odata.type" , "#microsoft.graph.bookingStaffRole"
		},
		{
			"workingHours@odata.type" , "#Collection(microsoft.graph.bookingWorkHours)"
		},
	},
};
var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].StaffMembers.PostAsync(requestBody);


```