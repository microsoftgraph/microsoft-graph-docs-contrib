---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomerBase = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomerBase-id}"]
	.Request()
	.GetAsync();

```