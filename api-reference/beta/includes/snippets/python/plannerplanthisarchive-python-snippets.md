---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.plans.item.archive.archive_post_request_body import ArchivePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ArchivePostRequestBody(
	justification = "String",
)

await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').archive.post(request_body)


```