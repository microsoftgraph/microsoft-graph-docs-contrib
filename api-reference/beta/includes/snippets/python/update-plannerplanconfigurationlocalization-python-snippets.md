---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerPlanConfigurationLocalization(
	odata_type = "#microsoft.graph.plannerPlanConfigurationLocalization",
	plan_title = "Order Tracking",
	buckets = [
		PlannerPlanConfigurationBucketLocalization(
			external_bucket_id = "deliveryBucket",
			name = "Deliveries",
		),
		PlannerPlanConfigurationBucketLocalization(
			external_bucket_id = "storePickupBucket",
			name = "Pickup",
		),
		PlannerPlanConfigurationBucketLocalization(
			external_bucket_id = "specialOrdersBucket",
			name = "Special Orders",
		),
		PlannerPlanConfigurationBucketLocalization(
			external_bucket_id = "returnProcessingBucket",
			name = "Customer Returns",
		),
	]
)

result = await graph_client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.plan_configuration.localizations.by_localization_id('plannerPlanConfigurationLocalization-id').patch(body = request_body)


```