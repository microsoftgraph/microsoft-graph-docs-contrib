
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreementAcceptance = await graphClient.Me.AgreementAcceptances
	.Request()
	.GetAsync();

```