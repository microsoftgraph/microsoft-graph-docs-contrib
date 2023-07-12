---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingStaffMember
{
	OdataType = "#microsoft.graph.bookingStaffMember",
	WorkingHours = new List<BookingWorkHours>
	{
		new BookingWorkHours
		{
			OdataType = "#microsoft.graph.bookingWorkHours",
			Day = DayOfWeekObject.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>
			{
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
					EndTime = new Time(DateTime.Parse("17:00:00.0000000")),
					StartTime = new Time(DateTime.Parse("08:00:00.0000000")),
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
					EndTime = new Time(DateTime.Parse("17:00:00.0000000")),
					StartTime = new Time(DateTime.Parse("08:00:00.0000000")),
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
					EndTime = new Time(DateTime.Parse("17:00:00.0000000")),
					StartTime = new Time(DateTime.Parse("08:00:00.0000000")),
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
					EndTime = new Time(DateTime.Parse("17:00:00.0000000")),
					StartTime = new Time(DateTime.Parse("08:00:00.0000000")),
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
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].StaffMembers["{bookingStaffMemberBase-id}"].PatchAsync(requestBody);


```