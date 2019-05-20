
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var value = new TiIndicator
{
	Id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
	AdditionalInformation = "test again",
};

var _value = new TiIndicator
{
	Id = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
	AdditionalInformation = "mytest",
};

var valueList = new List<TiIndicator>();
valueList.Add( _value );
valueList.Add( value );

await graphClient.Security.TiIndicators
	.UpdateTiIndicators(valueList)
	.Request()
	.PostAsync()

```