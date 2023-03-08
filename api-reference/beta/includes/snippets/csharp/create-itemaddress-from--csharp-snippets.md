---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemAddress
{
	DisplayName = "Home",
	Detail = new PhysicalAddress
	{
		Type = PhysicalAddressType.Home,
		PostOfficeBox = null,
		Street = "221B Baker Street",
		City = "London",
		State = null,
		CountryOrRegion = "United Kingdom",
		PostalCode = "E14 3TD",
	},
};
var result = await graphClient.Me.Profile.Addresses.PostAsync(requestBody);


```