```csharp
GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("requiresReview", "true")
};

var teamsApp = [Zip file containing a Teams app package];

await graphClient.AppCatalogs.TeamsApps
	.Request( queryOptions )
	.AddAsync(teamsApp);
```
