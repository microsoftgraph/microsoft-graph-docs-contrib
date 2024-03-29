---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.plans.item.moveToContainer.move_to_container_request_builder import MoveToContainerRequestBuilder
from msgraph.generated.models.move_to_container_post_request_body import MoveToContainerPostRequestBody
from msgraph.generated.models.planner_plan_container import PlannerPlanContainer

graph_client = GraphServiceClient(credentials, scopes)

request_body = MoveToContainerPostRequestBody(
	container = PlannerPlanContainer(
		container_id = "groupId",
		type = PlannerContainerType.Group,
	),
)

request_configuration = MoveToContainerRequestBuilder.MoveToContainerRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("If-Match", "\"string\"")


result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').move_to_container.post(request_body, request_configuration = request_configuration)


```