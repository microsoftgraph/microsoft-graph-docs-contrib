---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appointments = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments
	.Request()
	.GetAsync();

```