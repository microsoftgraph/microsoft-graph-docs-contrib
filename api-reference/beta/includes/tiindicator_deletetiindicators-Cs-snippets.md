
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var valueList = new List<String>();
valueList.Add( "id-value1" );
valueList.Add( "id-value2" );

await graphClient.Security.TiIndicators
	.DeleteTiIndicators(valueList)
	.Request()
	.PostAsync()

```