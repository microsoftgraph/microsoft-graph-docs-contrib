
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var idsList = new List<String>();
idsList.Add( "84b80893-8749-40a3-97b7-68513b600544" );
idsList.Add( "5d6059b6-368d-45f8-91e1-8e07d485f1d0" );

var typesList = new List<String>();
typesList.Add( "user" );

await graphClient.DirectoryObjects
	.GetByIds(idsList,typesList)
	.Request()
	.PostAsync()

```