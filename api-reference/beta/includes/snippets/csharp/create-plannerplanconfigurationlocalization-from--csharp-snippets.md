---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerPlanConfigurationLocalization
{
	OdataType = "#microsoft.graph.plannerPlanConfigurationLocalization",
	LanguageTag = "en-us",
	PlanTitle = "Order Tracking",
	Buckets = new List<PlannerPlanConfigurationBucketLocalization>
	{
		new PlannerPlanConfigurationBucketLocalization
		{
			OdataType = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			ExternalBucketId = "deliveryBucket",
			Name = "Deliveries",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			OdataType = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			ExternalBucketId = "storePickupBucket",
			Name = "Pickup",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			OdataType = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			ExternalBucketId = "specialOrdersBucket",
			Name = "Special Orders",
		},
		new PlannerPlanConfigurationBucketLocalization
		{
			OdataType = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			ExternalBucketId = "returnProcessingBucket",
			Name = "Customer Returns",
		},
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations.PostAsync(requestBody);


```