---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"]
	.Request()
	.GetAsync();

```