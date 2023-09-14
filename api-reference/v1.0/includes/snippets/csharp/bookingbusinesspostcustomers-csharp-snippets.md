---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomer
{
	OdataType = "#microsoft.graph.bookingCustomer",
	DisplayName = "Joni Sherman",
	EmailAddress = "jonis@relecloud.com",
	Addresses = new List<PhysicalAddress>
	{
		new PhysicalAddress
		{
			Street = "4567 Main Street",
			City = "Buffalo",
			State = "NY",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"postOfficeBox" , ""
				},
				{
					"type" , "home"
				},
			},
		},
		new PhysicalAddress
		{
			Street = "4570 Main Street",
			City = "Buffalo",
			State = "NY",
			CountryOrRegion = "USA",
			PostalCode = "98054",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"postOfficeBox" , ""
				},
				{
					"type" , "business"
				},
			},
		},
	},
	Phones = new List<Phone>
	{
		new Phone
		{
			Number = "206-555-0100",
			Type = PhoneType.Home,
		},
		new Phone
		{
			Number = "206-555-0200",
			Type = PhoneType.Business,
		},
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Customers.PostAsync(requestBody);


```