---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new BookingStaffMember
{
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
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].StaffMembers["{bookingStaffMember-id}"].PatchAsync(requestBody);


```