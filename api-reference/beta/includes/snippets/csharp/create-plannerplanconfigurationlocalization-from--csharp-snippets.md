---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations.PostAsync(requestBody);


```