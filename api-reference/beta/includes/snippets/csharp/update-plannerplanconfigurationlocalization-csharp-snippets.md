---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanConfigurationLocalization = new PlannerPlanConfigurationLocalization
{
	PlanTitle = "Order Tracking",
	Buckets = new List<PlannerPlanConfigurationBucketLocalization>()
	{
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "deliveryBucket",
			Name = "Deliveries"
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "storePickupBucket",
			Name = "Pickup"
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "specialOrdersBucket",
			Name = "Special Orders"
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "returnProcessingBucket",
			Name = "Customer Returns"
		}
	}
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations["{plannerPlanConfigurationLocalization-id}"]
	.Request()
	.UpdateAsync(plannerPlanConfigurationLocalization);

```