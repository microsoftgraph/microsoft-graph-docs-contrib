---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerPlanConfiguration(
	odata_type = "#microsoft.graph.plannerPlanConfiguration",
	default_language = "en-us",
	buckets = [
		PlannerPlanConfigurationBucketDefinition(
			external_bucket_id = "deliveryBucket",
		),
		PlannerPlanConfigurationBucketDefinition(
			external_bucket_id = "storePickupBucket",
		),
		PlannerPlanConfigurationBucketDefinition(
			external_bucket_id = "specialOrdersBucket",
		),
		PlannerPlanConfigurationBucketDefinition(
			external_bucket_id = "returnProcessingBucket",
		),
	],
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.patch(request_body)


```