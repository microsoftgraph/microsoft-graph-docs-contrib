---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

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
	},
	Features = new OnPremisesDirectorySynchronizationFeature
	{
		GroupWriteBackEnabled = true,
	},
};
var result = await graphClient.Directory.OnPremisesSynchronization["{onPremisesDirectorySynchronization-id}"].PatchAsync(requestBody);


```