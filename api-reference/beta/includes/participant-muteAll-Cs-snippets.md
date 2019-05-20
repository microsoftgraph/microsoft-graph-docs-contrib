
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participantsList = new List<String>();
participantsList.Add( "" );

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"].Participants
	.MuteAll(participantsList,clientContext)
	.Request()
	.PostAsync()

```