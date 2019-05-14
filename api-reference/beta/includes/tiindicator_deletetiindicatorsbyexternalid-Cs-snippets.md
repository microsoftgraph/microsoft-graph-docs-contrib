
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var valueList = new List<String>();
valueList.Add( "externalId-value1" );
valueList.Add( "externalId-value2" );

await graphClient.Security.TiIndicators
	.DeleteTiIndicatorsByExternalId(valueList)
	.Request()
	.PostAsync()

```