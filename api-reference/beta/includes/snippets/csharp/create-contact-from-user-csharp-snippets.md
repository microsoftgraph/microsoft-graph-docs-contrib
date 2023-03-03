---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<TypedEmailAddress>
	{
		new TypedEmailAddress
		{
			Address = "pavelb@contoso.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Personal,
		},
		new TypedEmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work",
		},
	},
	Phones = new List<Phone>
	{
		new Phone
		{
			Number = "+1 732 555 0102",
			Type = PhoneType.Business,
		},
	},
};
var result = await graphClient.Me.Contacts.PostAsync(requestBody);


```