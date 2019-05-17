---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	End = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T15:30:00+03:00",
		TimeZone = "UTC"
	},
	InvoiceDate = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T15:30:00+03:00",
		TimeZone = "UTC"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T15:00:00+03:00",
		TimeZone = "UTC"
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKnAAA="]
	.Request()
	.UpdateAsync(bookingAppointment);

```