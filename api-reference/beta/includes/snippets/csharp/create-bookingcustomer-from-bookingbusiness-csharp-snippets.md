---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomer
{
	DisplayName = "Joni Sherman",
	EmailAddress = "jonis@relecloud.com",
	Addresses = new List<PhysicalAddress>
	{
		new PhysicalAddress
		{
			PostOfficeBox = "",
			Street = "4567 Main Street",
			City = "Buffalo",
			State = "NY",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			Type = PhysicalAddressType.Home,
		},
		new PhysicalAddress
		{
			PostOfficeBox = "",
			Street = "4570 Main Street",
			City = "Buffalo",
			State = "NY",
			CountryOrRegion = "USA",
			PostalCode = "98054",
			Type = PhysicalAddressType.Business,
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
var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers.PostAsync(requestBody);


```