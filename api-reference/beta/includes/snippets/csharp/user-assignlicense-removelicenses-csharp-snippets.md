---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addLicenses = new List<AssignedLicense>()
{
};

var removeLicenses = new List<Guid>()
{
	Guid.Parse("f30db892-07e9-47e9-837c-80727f46fd3d"),
	Guid.Parse("84a661c4-e949-4bd2-a560-ed7766fcaf2b")
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```