
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var phones = new Phone
{
	Number = "+1 732 555 0102",
	Type = PhoneType.Business,
};

var phonesList = new List<Phone>();
phonesList.Add( phones );

var emailAddresses = new TypedEmailAddress
{
	Address = "pavelb@fabrikam.onmicrosoft.com",
	Name = "Pavel Bansky",
	Type = EmailType.Other,
	OtherLabel = "Volunteer work",
};

var _emailAddresses = new TypedEmailAddress
{
	Address = "pavelb@contoso.onmicrosoft.com",
	Name = "Pavel Bansky",
	Type = EmailType.Personal,
};

var emailAddressesList = new List<TypedEmailAddress>();
emailAddressesList.Add( _emailAddresses );
emailAddressesList.Add( emailAddresses );

var contact = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = emailAddressesList,
	Phones = phonesList,
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contact);

```