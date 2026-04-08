---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.presence.set_manual_location.set_manual_location_post_request_body import SetManualLocationPostRequestBody
from msgraph_beta.generated.models.work_location_type import WorkLocationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetManualLocationPostRequestBody(
	work_location_type = WorkLocationType.Office,
	place_id = "eb706f15-137e-4722-b4d1-b601481d9251",
)

await graph_client.me.presence.set_manual_location.post(request_body)


```