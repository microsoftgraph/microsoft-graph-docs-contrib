---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	BusinessPhones = new List<string>
	{
		"+1 425 555 0109",
	},
	OfficeLocation = "18/2111",
	AuthorizationInfo = new AuthorizationInfo
	{
		CertificateUserIds = new List<string>
		{
			"5432109876543210@mil",
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```