---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnPremisesDirectorySynchronization
{
	Configuration = new OnPremisesDirectorySynchronizationConfiguration
	{
		AccidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention
		{
			SynchronizationPreventionType = OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount,
			AlertThreshold = 500,
		},
		SynchronizationInterval = TimeSpan.Parse("PT30M"),
		CustomerRequestedSynchronizationInterval = TimeSpan.Parse("PT1H"),
	},
	Features = new OnPremisesDirectorySynchronizationFeature
	{
		GroupWriteBackEnabled = true,
	},
};
var result = await graphClient.Directory.OnPremisesSynchronization["{onPremisesDirectorySynchronization-id}"].PatchAsync(requestBody);


```