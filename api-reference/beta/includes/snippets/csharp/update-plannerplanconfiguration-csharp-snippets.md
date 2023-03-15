---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerPlanConfiguration
{
	OdataType = "#microsoft.graph.plannerPlanConfiguration",
	DefaultLanguage = "en-us",
	Buckets = new List<PlannerPlanConfigurationBucketDefinition>
	{
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "deliveryBucket",
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "storePickupBucket",
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "specialOrdersBucket",
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "returnProcessingBucket",
		},
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.PatchAsync(requestBody);


```