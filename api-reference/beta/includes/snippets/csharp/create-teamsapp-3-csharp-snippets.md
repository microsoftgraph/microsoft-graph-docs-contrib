```csharp
GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppDefinition = null;

await graphClient.AppCatalogs.TeamsApps["a761ad07-22ef-4a53-9feb-2837c8ad4a84"].AppDefinitions["YTc2MWFkMDctMjJlZi00YTUzLTlmZWItMjgzN2M4YWQ0YTg0IyMxLjEuOCMjU3VibWl0dGVk"]
	.Request()
	.UpdateAsync(teamsAppDefinition);
```
