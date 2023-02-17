---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesDirectorySynchronization = new OnPremisesDirectorySynchronization
{
	Configuration = new OnPremisesDirectorySynchronizationConfiguration
	{
		AccidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention
		{
			SynchronizationPreventionType = OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount,
			AlertThreshold = 500
		},
		SynchronizationInterval = new Duration("PT30M"),
		CustomerRequestedSynchronizationInterval = new Duration("PT1H")
	},
	Features = new OnPremisesDirectorySynchronizationFeature
	{
		GroupWriteBackEnabled = true
	}
};

await graphClient.Directory.OnPremisesSynchronization["{onPremisesDirectorySynchronization-id}"]
	.Request()
	.UpdateAsync(onPremisesDirectorySynchronization);

```