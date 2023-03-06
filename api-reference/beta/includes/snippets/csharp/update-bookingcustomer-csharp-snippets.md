---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomer
{
	DisplayName = "Adele",
	EmailAddress = "adele@relecloud.com",
};
var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomer-id}"].PatchAsync(requestBody);


```