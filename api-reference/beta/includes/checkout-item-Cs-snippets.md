
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drives["{drive-id}"].Items["{item-id}"]
	.Checkout()
	.Request()
	.PostAsync()

```