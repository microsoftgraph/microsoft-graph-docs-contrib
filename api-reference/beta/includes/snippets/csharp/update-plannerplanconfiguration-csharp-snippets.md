---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PlannerPlanConfiguration
{
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
	Localizations = new List<PlannerPlanConfigurationLocalization>
	{
		new PlannerPlanConfigurationLocalization
		{
			Id = "en-us",
			LanguageTag = "en-us",
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
		},
		new PlannerPlanConfigurationLocalization
		{
			Id = "es-es",
			LanguageTag = "es-es",
			PlanTitle = "Seguimiento de pedidos",
			Buckets = new List<PlannerPlanConfigurationBucketLocalization>
			{
				new PlannerPlanConfigurationBucketLocalization
				{
					ExternalBucketId = "deliveryBucket",
					Name = "Entregas",
				},
				new PlannerPlanConfigurationBucketLocalization
				{
					ExternalBucketId = "storePickupBucket",
					Name = "Recogida",
				},
				new PlannerPlanConfigurationBucketLocalization
				{
					ExternalBucketId = "specialOrdersBucket",
					Name = "Pedidos especiales",
				},
				new PlannerPlanConfigurationBucketLocalization
				{
					ExternalBucketId = "specialOrdersBucket",
					Name = "Devoluciones de clientes",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.PatchAsync(requestBody);


```