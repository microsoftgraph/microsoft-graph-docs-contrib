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
			Guid.Parse("8a256a2b-b617-496d-b51b-e76466e88db0")
		},
		SkuId = Guid.Parse("84a661c4-e949-4bd2-a560-ed7766fcaf2b")
	},
	new AssignedLicense
	{
		DisabledPlans = new List<Guid>()
		{
		},
		SkuId = Guid.Parse("f30db892-07e9-47e9-837c-80727f46fd3d")
	}
};

var removeLicenses = new List<Guid>()
{
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```