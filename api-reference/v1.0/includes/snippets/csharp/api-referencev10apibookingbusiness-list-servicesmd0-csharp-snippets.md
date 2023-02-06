---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var services = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Services
	.Request()
	.GetAsync();

```