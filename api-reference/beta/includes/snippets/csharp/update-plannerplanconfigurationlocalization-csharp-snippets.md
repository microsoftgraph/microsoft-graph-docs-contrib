---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerPlanConfigurationLocalization
{
	OdataType = "#microsoft.graph.plannerPlanConfigurationLocalization",
	PlanTitle = "Order Tracking",
	Buckets = new List<PlannerPlanConfigurationBucketLocalization>
	{
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "deliveryBucket",
			Name = "Deliveries",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "storePickupBucket",
			Name = "Pickup",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "specialOrdersBucket",
			Name = "Special Orders",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			ExternalBucketId = "returnProcessingBucket",
			Name = "Customer Returns",
		},
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations["{plannerPlanConfigurationLocalization-id}"].PatchAsync(requestBody);


```