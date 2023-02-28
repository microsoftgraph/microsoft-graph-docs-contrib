```csharp
GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsApp = [Zip file containing a Teams app package];

await graphClient.AppCatalogs.TeamsApps
	.Request()
	.AddAsync(teamsApp);
```
