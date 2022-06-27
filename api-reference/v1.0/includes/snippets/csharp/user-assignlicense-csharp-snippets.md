---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addLicenses = new List<AssignedLicense>()
{
	new AssignedLicense
	{
		DisabledPlans = new List<Guid>()
		{
			Guid.Parse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a")
		},
		SkuId = Guid.Parse("45715bb8-13f9-4bf6-927f-ef96c102d394")
	}
};

var removeLicenses = new List<Guid>()
{
	Guid.Parse("bea13e0c-3828-4daa-a392-28af7ff61a0f")
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```