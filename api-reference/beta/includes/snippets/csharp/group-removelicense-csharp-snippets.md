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
	Guid.Parse("c7df2760-2c81-4ef7-b578-5b5392b571df"),
	Guid.Parse("b05e124f-c7cc-45a0-a6aa-8cf78c946968")
};

await graphClient.Groups["{group-id}"]
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```