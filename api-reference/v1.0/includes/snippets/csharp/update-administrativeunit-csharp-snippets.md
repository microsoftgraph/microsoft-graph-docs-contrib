---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = new AdministrativeUnit
{
	DisplayName = "Greater Seattle District Technical Schools"
};

await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"]
	.Request()
	.UpdateAsync(administrativeUnit);

```