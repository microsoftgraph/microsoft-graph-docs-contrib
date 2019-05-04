
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeSlots = new BookingWorkTimeSlot
{
	End = "17:00:00.0000000",
	Start = "08:00:00.0000000",
};

var timeSlotsList = new List<BookingWorkTimeSlot>();
timeSlotsList.Add( timeSlots );

var workingHours = new BookingWorkHours
{
	Day = DayOfWeek.Friday,
	TimeSlots = timeSlotsList,
};

var timeSlots = new BookingWorkTimeSlot
{
	End = "17:00:00.0000000",
	Start = "08:00:00.0000000",
};

var timeSlotsList = new List<BookingWorkTimeSlot>();
timeSlotsList.Add( timeSlots );

var _workingHours = new BookingWorkHours
{
	Day = DayOfWeek.Thursday,
	TimeSlots = timeSlotsList,
};

var timeSlots = new BookingWorkTimeSlot
{
	End = "17:00:00.0000000",
	Start = "08:00:00.0000000",
};

var timeSlotsList = new List<BookingWorkTimeSlot>();
timeSlotsList.Add( timeSlots );

var __workingHours = new BookingWorkHours
{
	Day = DayOfWeek.Wednesday,
	TimeSlots = timeSlotsList,
};

var timeSlots = new BookingWorkTimeSlot
{
	End = "17:00:00.0000000",
	Start = "08:00:00.0000000",
};

var timeSlotsList = new List<BookingWorkTimeSlot>();
timeSlotsList.Add( timeSlots );

var ___workingHours = new BookingWorkHours
{
	Day = DayOfWeek.Tuesday,
	TimeSlots = timeSlotsList,
};

var timeSlotsList = new List<BookingWorkTimeSlot>();

var ____workingHours = new BookingWorkHours
{
	Day = DayOfWeek.Monday,
	TimeSlots = timeSlotsList,
};

var workingHoursList = new List<BookingWorkHours>();
workingHoursList.Add( ____workingHours );
workingHoursList.Add( ___workingHours );
workingHoursList.Add( __workingHours );
workingHoursList.Add( _workingHours );
workingHoursList.Add( workingHours );

var bookingStaffMember = new BookingStaffMember
{
	WorkingHours = workingHoursList,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].StaffMembers["8ee1c803-a1fa-406d-8259-7ab53233f148"]
	.Request()
	.UpdateAsync(bookingStaffMember);

```