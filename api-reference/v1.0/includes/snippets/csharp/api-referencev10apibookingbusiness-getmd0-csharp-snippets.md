---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"]
	.Request()
	.GetAsync();

```