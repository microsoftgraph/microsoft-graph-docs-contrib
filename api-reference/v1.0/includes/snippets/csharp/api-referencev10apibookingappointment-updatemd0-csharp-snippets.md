---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	EndDateTime = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T12:30:00+00:00",
		TimeZone = "UTC"
	},
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T12:00:00+00:00",
		TimeZone = "UTC"
	}
};

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"]
	.Request()
	.UpdateAsync(bookingAppointment);

```