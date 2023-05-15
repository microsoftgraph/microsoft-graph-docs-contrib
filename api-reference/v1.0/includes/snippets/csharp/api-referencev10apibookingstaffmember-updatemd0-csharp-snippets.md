---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingStaffMemberBase
{
	OdataType = "#microsoft.graph.bookingStaffMember",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"workingHours" , new List<>
			{
				new 
				{
					OdataType = "#microsoft.graph.bookingWorkHours",
					DayOdataType = "#microsoft.graph.dayOfWeek",
					Day = "monday",
					TimeSlotsOdataType = "#Collection(microsoft.graph.bookingWorkTimeSlot)",
					TimeSlots = new List<>
					{
					},
				},
				new 
				{
					OdataType = "#microsoft.graph.bookingWorkHours",
					DayOdataType = "#microsoft.graph.dayOfWeek",
					Day = "tuesday",
					TimeSlotsOdataType = "#Collection(microsoft.graph.bookingWorkTimeSlot)",
					TimeSlots = new List<>
					{
						new 
						{
							OdataType = "#microsoft.graph.bookingWorkTimeSlot",
							EndTime = "17:00:00.0000000",
							StartTime = "08:00:00.0000000",
						},
					},
				},
				new 
				{
					OdataType = "#microsoft.graph.bookingWorkHours",
					DayOdataType = "#microsoft.graph.dayOfWeek",
					Day = "wednesday",
					TimeSlotsOdataType = "#Collection(microsoft.graph.bookingWorkTimeSlot)",
					TimeSlots = new List<>
					{
						new 
						{
							OdataType = "#microsoft.graph.bookingWorkTimeSlot",
							EndTime = "17:00:00.0000000",
							StartTime = "08:00:00.0000000",
						},
					},
				},
				new 
				{
					OdataType = "#microsoft.graph.bookingWorkHours",
					DayOdataType = "#microsoft.graph.dayOfWeek",
					Day = "thursday",
					TimeSlotsOdataType = "#Collection(microsoft.graph.bookingWorkTimeSlot)",
					TimeSlots = new List<>
					{
						new 
						{
							OdataType = "#microsoft.graph.bookingWorkTimeSlot",
							EndTime = "17:00:00.0000000",
							StartTime = "08:00:00.0000000",
						},
					},
				},
				new 
				{
					OdataType = "#microsoft.graph.bookingWorkHours",
					DayOdataType = "#microsoft.graph.dayOfWeek",
					Day = "friday",
					TimeSlotsOdataType = "#Collection(microsoft.graph.bookingWorkTimeSlot)",
					TimeSlots = new List<>
					{
						new 
						{
							OdataType = "#microsoft.graph.bookingWorkTimeSlot",
							EndTime = "17:00:00.0000000",
							StartTime = "08:00:00.0000000",
						},
					},
				},
			}
		},
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].StaffMembers["{bookingStaffMemberBase-id}"].PatchAsync(requestBody);


```