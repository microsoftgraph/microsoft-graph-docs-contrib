
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationTemplate = new SynchronizationTemplate
{
	Id = "Slack",
	ApplicationId = "{id}",
	FactoryTag = "CustomSCIM",
};

await graphClient.Applications["{id}"].Synchronization.Templates["{templateId}"]
	.Request()
	.PutAsync(synchronizationTemplate);

```