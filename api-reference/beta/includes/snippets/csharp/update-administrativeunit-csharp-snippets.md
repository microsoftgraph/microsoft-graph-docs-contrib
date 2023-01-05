---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = new AdministrativeUnit
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"membershipType", "Dynamic"},
		{"membershipRule", "(user.country -eq \"United States\")"},
		{"membershipRuleProcessingState", "On"}
	}
};

await graphClient.AdministrativeUnits["{administrativeUnit-id}"]
	.Request()
	.UpdateAsync(administrativeUnit);

```