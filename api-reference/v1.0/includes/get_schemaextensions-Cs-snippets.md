
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtensions = await graphClient.SchemaExtensions
	.Request()
	.Filter("id eq 'graphlearn_test'")
	.GetAsync();

```