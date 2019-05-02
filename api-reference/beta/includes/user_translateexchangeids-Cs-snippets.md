
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var inputIdsList = new List<String>();
inputIdsList.Add( "{rest-formatted-id-1}" );
inputIdsList.Add( "{rest-formatted-id-2}" );

var sourceIdType = "restId";

var targetIdType = "restImmutableEntryId";

await graphClient.Me
	.TranslateExchangeIds(inputIdsList,targetIdType,sourceIdType)
	.Request()
	.PostAsync()

```