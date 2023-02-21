---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanConfiguration = new PlannerPlanConfiguration
{
	DefaultLanguage = "en-us",
	Buckets = new List<PlannerPlanConfigurationBucketDefinition>()
	{
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "deliveryBucket"
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "storePickupBucket"
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "specialOrdersBucket"
		},
		new PlannerPlanConfigurationBucketDefinition
		{
			ExternalBucketId = "returnProcessingBucket"
		}
	}
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration
	.Request()
	.UpdateAsync(plannerPlanConfiguration);

```