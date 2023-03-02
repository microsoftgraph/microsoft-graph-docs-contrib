---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Contact
{
	EmailAddresses = new List<TypedEmailAddress>
	{
		new TypedEmailAddress
		{
			Type = EmailType.Personal,
			Name = "Pavel Bansky",
			Address = "pavelb@adatum.onmicrosoft.com",
		},
		new TypedEmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work",
		},
	},
};
var result = await graphClient.Me.Contacts["{contact-id}"].PatchAsync(requestBody);


```