
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var vendorInformation = new SecurityVendorInformation
{
	Provider = "Windows Defender ATP",
	Vendor = "Microsoft",
};

var parameters = new KeyValuePair
{
	Name = "IP",
	Value = "1.2.3.4",
};

var parametersList = new List<KeyValuePair>();
parametersList.Add( parameters );

var securityAction = new SecurityAction
{
	Name = "BlockIp",
	ActionReason = "Test",
	Parameters = parametersList,
	VendorInformation = vendorInformation,
};

await graphClient.Security.SecurityActions
	.Request()
	.AddAsync(securityAction);

```