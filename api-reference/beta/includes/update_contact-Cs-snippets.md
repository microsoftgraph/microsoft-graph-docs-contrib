
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddresses = new TypedEmailAddress
{
	Address = "pavelb@fabrikam.onmicrosoft.com",
	Name = "Pavel Bansky",
	Type = EmailType.Other,
	OtherLabel = "Volunteer work",
};

var _emailAddresses = new TypedEmailAddress
{
	Type = EmailType.Personal,
	Name = "Pavel Bansky",
	Address = "pavelb@adatum.onmicrosoft.com",
};

var emailAddressesList = new List<TypedEmailAddress>();
emailAddressesList.Add( _emailAddresses );
emailAddressesList.Add( emailAddresses );

var contact = new Contact
{
	EmailAddresses = emailAddressesList,
};

await graphClient.Me.Contacts["AAMkADh6v5AAAvgTCEAAA="]
	.Request()
	.UpdateAsync(contact);

```