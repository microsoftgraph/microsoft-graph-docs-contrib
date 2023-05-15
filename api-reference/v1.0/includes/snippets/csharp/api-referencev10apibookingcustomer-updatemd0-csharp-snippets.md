---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomerBase
{
	OdataType = "#microsoft.graph.bookingCustomer",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Adele"
		},
		{
			"emailAddress" , "adele@relecloud.com"
		},
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomerBase-id}"].PatchAsync(requestBody);


```