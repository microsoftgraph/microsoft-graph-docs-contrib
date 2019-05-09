
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var homeAddress = new PhysicalAddress
{
	Street = "123 Some street",
	City = "Seattle",
	State = "WA",
	PostalCode = "98121",
};

var contact = new Contact
{
	HomeAddress = homeAddress,
	Birthday = "1974-07-22",
};

await graphClient.Me.Contacts["{id}"]
	.Request()
	.UpdateAsync(contact);

```