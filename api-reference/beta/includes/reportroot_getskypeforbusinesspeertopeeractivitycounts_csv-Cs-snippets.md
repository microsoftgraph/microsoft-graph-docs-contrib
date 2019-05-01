
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessPeerToPeerActivityCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityCounts('D7')
	.Request()
	.GetAsync();

```