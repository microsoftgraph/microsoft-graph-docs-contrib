
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domainDnsRecord = await graphClient.Domains["{domain-name}"].VerificationDnsRecords
	.Request()
	.GetAsync();

```