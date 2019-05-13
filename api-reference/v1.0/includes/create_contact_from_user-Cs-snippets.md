
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessPhonesList = new List<String>();
businessPhonesList.Add( "+1 732 555 0102" );

var emailAddresses = new EmailAddress
{
	Address = "pavelb@fabrikam.onmicrosoft.com",
	Name = "Pavel Bansky",
};

var emailAddressesList = new List<EmailAddress>();
emailAddressesList.Add( emailAddresses );

var contact = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = emailAddressesList,
	BusinessPhones = businessPhonesList,
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contact);

```