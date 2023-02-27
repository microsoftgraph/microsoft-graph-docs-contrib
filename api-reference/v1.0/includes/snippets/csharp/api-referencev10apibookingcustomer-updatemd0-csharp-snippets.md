---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomerBase = new BookingCustomer
{
	DisplayName = "Adele",
	EmailAddress = "adele@relecloud.com"
};

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomerBase-id}"]
	.Request()
	.UpdateAsync(bookingCustomerBase);

```