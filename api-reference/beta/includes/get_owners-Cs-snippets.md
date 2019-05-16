
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Teams["{id}"].InstalledApps
	.Request()
	.Expand("teamsAppDefinition")
	.GetAsync();

```