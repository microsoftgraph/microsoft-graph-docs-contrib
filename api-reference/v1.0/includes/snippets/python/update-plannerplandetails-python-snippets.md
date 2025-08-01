---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.planner.plans.item.details.details_request_builder import DetailsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.planner_plan_details import PlannerPlanDetails
from msgraph.generated.models.planner_user_ids import PlannerUserIds
from msgraph.generated.models.planner_category_descriptions import PlannerCategoryDescriptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerPlanDetails(
	shared_with = PlannerUserIds(
		additional_data = {
				"6463a5ce-2119-4198-9f2a-628761df4a62" : True,
				"d95e6152-f683-4d78-9ff5-67ad180fea4a" : False,
		}
	),
	category_descriptions = PlannerCategoryDescriptions(
		category1 = "Indoors",
		category3 = None,
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').details.patch(request_body, request_configuration = request_configuration)


```