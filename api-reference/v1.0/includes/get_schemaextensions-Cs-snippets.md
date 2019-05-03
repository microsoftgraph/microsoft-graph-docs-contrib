
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtension = await graphClient.SchemaExtensions
	.Request()
	.Filter("id eq 'graphlearn_test'")
	.GetAsync();

```