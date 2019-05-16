
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var verificationDnsRecords = await graphClient.Domains["{domain-name}"].VerificationDnsRecords
	.Request()
	.GetAsync();

```