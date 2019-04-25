
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupId = "ffffffff-ffff-ffff-ffff-ffffffffffff";

await graphClient.GroupLifecyclePolicies
	.RenewGroup(groupId)
	.Request()
	.PostAsync()

```