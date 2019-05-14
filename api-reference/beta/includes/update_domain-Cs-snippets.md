
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var supportedServicesList = new List<String>();
supportedServicesList.Add( "Email" );
supportedServicesList.Add( "OfficeCommunicationsOnline" );

var domain = new Domain
{
	IsDefault = true,
	SupportedServices = supportedServicesList,
};

await graphClient.Domains["contoso.com"]
	.Request()
	.UpdateAsync(domain);

```