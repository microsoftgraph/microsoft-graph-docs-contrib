---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<EmailAddress>
	{
		new EmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky",
		},
	},
	BusinessPhones = new List<string>
	{
		"+1 732 555 0102",
	},
};
var result = await graphClient.Me.Contacts.PostAsync(requestBody);


```