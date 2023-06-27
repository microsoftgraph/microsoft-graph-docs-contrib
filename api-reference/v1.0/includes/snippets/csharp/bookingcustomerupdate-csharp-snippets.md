---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomer
{
	OdataType = "#microsoft.graph.bookingCustomer",
	DisplayName = "Adele",
	EmailAddress = "adele@relecloud.com",
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomerBase-id}"].PatchAsync(requestBody);


```