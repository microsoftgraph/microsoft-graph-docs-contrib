
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.Contacts["{id}"].MemberOf
	.Request()
	.GetAsync();

```