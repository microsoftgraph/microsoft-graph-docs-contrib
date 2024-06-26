---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.plans.item.move_to_container.move_to_container_request_builder import MoveToContainerRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.planner.plans.item.move_to_container.move_to_container_post_request_body import MoveToContainerPostRequestBody
from msgraph_beta.generated.models.planner_plan_container import PlannerPlanContainer
from msgraph_beta.generated.models.planner_container_type import PlannerContainerType

graph_client = GraphServiceClient(credentials, scopes)

request_body = MoveToContainerPostRequestBody(
	container = PlannerPlanContainer(
		container_id = "groupId",
		type = PlannerContainerType.Group,
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"string\"")


result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').move_to_container.post(request_body, request_configuration = request_configuration)


```