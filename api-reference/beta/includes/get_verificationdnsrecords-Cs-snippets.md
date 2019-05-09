
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var verificationDnsRecords = await graphClient.Domains["contoso.com"].VerificationDnsRecords
	.Request()
	.GetAsync();

```