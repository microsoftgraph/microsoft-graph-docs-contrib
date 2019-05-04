
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppInstallation = await graphClient.Teams["{id}"].InstalledApps
	.Request()
	.Expand("teamsAppDefinition")
	.GetAsync();

```