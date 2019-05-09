
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drives["{drive-id}"].Items["{item-id}"].Versions["{version-id}"]
	.RestoreVersion()
	.Request()
	.PostAsync()

```