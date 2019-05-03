
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessPhonesList = new List<String>();
businessPhonesList.Add( "businessPhones-value" );

var user = new User
{
	AccountEnabled = true,
	BusinessPhones = businessPhonesList,
	City = "city-value",
};

await graphClient.Me
	.Request()
	.UpdateAsync(user);

```