---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getStaffAvailability = await graphClient.BookingBusinesses["{bookingBusiness-id}"]
	.GetStaffAvailability()
	.Request()
	.GetAsync();

```