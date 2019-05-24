---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingStaffMember = new BookingStaffMember
{
	ColorIndex = 1,
	DisplayName = "Dana Swope",
	EmailAddress = "danas@contoso.com",
	Role = BookingStaffRole.ExternalGuest,
	UseBusinessHours = true,
	WorkingHours = new List<BookingWorkHours>()
	{
		new BookingWorkHours
		{
			Day = DayOfWeek.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Tuesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Wednesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Thursday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Friday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		}
	}
};

await graphClient.BookingBusinesses["{id}"].StaffMembers
	.Request()
	.AddAsync(bookingStaffMember);

```