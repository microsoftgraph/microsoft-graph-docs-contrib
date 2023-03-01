---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.AssignLicense.AssignLicensePostRequestBody
{
	AddLicenses = new List<AssignedLicense>
	{
		new AssignedLicense
		{
			DisabledPlans = new List<11b0131d-43c8-4bbb-b2c8-e80f9a50834a>
			{
				Guid.Parse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"),
			},
			SkuId = Guid.Parse("45715bb8-13f9-4bf6-927f-ef96c102d394"),
		},
	},
	RemoveLicenses = new List<Bea13e0c-3828-4daa-a392-28af7ff61a0f>
	{
		Guid.Parse("bea13e0c-3828-4daa-a392-28af7ff61a0f"),
	},
};
var result = await graphClient.Me.AssignLicense.PostAsync(requestBody);


```