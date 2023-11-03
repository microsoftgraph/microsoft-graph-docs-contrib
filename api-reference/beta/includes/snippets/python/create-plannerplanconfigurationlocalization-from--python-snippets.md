---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerPlanConfigurationLocalization(
	odata_type = "#microsoft.graph.plannerPlanConfigurationLocalization",
	language_tag = "en-us",
	plan_title = "Order Tracking",
	buckets = [
		PlannerPlanConfigurationBucketLocalization(
			odata_type = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			external_bucket_id = "deliveryBucket",
			name = "Deliveries",
		),
		PlannerPlanConfigurationBucketLocalization(
			odata_type = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			external_bucket_id = "storePickupBucket",
			name = "Pickup",
		),
		PlannerPlanConfigurationBucketLocalization(
			odata_type = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			external_bucket_id = "specialOrdersBucket",
			name = "Special Orders",
		),
		PlannerPlanConfigurationBucketLocalization(
			odata_type = "microsoft.graph.plannerPlanConfigurationBucketLocalization",
			external_bucket_id = "returnProcessingBucket",
			name = "Customer Returns",
		),
	],
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.localizations.post(request_body)


```