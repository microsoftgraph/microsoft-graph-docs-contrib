
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var criteria = new SynchronizationJobRestartCriteria
{
	ResetScope = SynchronizationJobRestartScope.Full,
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"]
	.Restart(criteria)
	.Request()
	.PostAsync()

```