---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingStaffMemberBase = new BookingStaffMember
{
	WorkingHours = new List<BookingWorkHours>()
	{
		new BookingWorkHours
		{
			Day = DayOfWeek.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Tuesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					EndTime = new TimeOfDay(17, 0, 0),
					StartTime = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Wednesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					EndTime = new TimeOfDay(17, 0, 0),
					StartTime = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Thursday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					EndTime = new TimeOfDay(17, 0, 0),
					StartTime = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Friday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					EndTime = new TimeOfDay(17, 0, 0),
					StartTime = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		}
	}
};

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].StaffMembers["{bookingStaffMemberBase-id}"]
	.Request()
	.UpdateAsync(bookingStaffMemberBase);

```