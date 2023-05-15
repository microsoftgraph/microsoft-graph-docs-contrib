---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkPosition
{
	Detail = new PositionDetail
	{
		Company = new CompanyDetail
		{
			DisplayName = "Adventureworks Ltd.",
			Department = "Consulting",
			OfficeLocation = "AW23/344",
			Address = new PhysicalAddress
			{
				Type = PhysicalAddressType.Business,
				Street = "123 Patriachy Ponds",
				City = "Moscow",
				CountryOrRegion = "Russian Federation",
				PostalCode = "RU-34621",
			},
			WebUrl = "https://www.adventureworks.com",
		},
		JobTitle = "Senior Product Branding Manager II",
		Role = "consulting",
	},
	IsCurrent = true,
};
var result = await graphClient.Me.Profile.Positions.PostAsync(requestBody);


```