---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingBusiness
{
	DisplayName = "Fourth Coffee",
	Address = new PhysicalAddress
	{
		Street = "4567 Main Street",
		City = "Buffalo",
		State = "NY",
		CountryOrRegion = "USA",
		PostalCode = "98052",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"postOfficeBox" , "P.O. Box 123"
			},
		},
	},
	Phone = "206-555-0100",
	Email = "manager@fourthcoffee.com",
	WebSiteUrl = "https://www.fourthcoffee.com",
	DefaultCurrencyIso = "USD",
};
var result = await graphClient.Solutions.BookingBusinesses.PostAsync(requestBody);


```