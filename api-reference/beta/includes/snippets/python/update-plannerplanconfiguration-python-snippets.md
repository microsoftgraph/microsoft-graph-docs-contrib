---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_plan_configuration import PlannerPlanConfiguration
from msgraph_beta.generated.models.planner_plan_configuration_bucket_definition import PlannerPlanConfigurationBucketDefinition
from msgraph_beta.generated.models.planner_plan_configuration_localization import PlannerPlanConfigurationLocalization
from msgraph_beta.generated.models.planner_plan_configuration_bucket_localization import PlannerPlanConfigurationBucketLocalization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerPlanConfiguration(
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
	localizations = [
		PlannerPlanConfigurationLocalization(
			id = "en-us",
			language_tag = "en-us",
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
		),
		PlannerPlanConfigurationLocalization(
			id = "es-es",
			language_tag = "es-es",
			plan_title = "Seguimiento de pedidos",
			buckets = [
				PlannerPlanConfigurationBucketLocalization(
					external_bucket_id = "deliveryBucket",
					name = "Entregas",
				),
				PlannerPlanConfigurationBucketLocalization(
					external_bucket_id = "storePickupBucket",
					name = "Recogida",
				),
				PlannerPlanConfigurationBucketLocalization(
					external_bucket_id = "specialOrdersBucket",
					name = "Pedidos especiales",
				),
				PlannerPlanConfigurationBucketLocalization(
					external_bucket_id = "specialOrdersBucket",
					name = "Devoluciones de clientes",
				),
			],
		),
	],
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.patch(request_body)


```