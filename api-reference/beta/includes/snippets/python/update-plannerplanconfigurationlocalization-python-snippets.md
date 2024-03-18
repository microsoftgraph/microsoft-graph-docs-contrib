---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.planner_plan_configuration_localization import PlannerPlanConfigurationLocalization
from msgraph.generated.models.planner_plan_configuration_bucket_localization import PlannerPlanConfigurationBucketLocalization

graph_client = GraphServiceClient(credentials, scopes)

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
	],
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.localizations.by_planner_plan_configuration_localization_id('plannerPlanConfigurationLocalization-id').patch(request_body)


```