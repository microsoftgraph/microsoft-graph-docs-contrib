---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.settings.workhoursandlocations.occurrences.set_current_location.set_current_location_post_request_body import SetCurrentLocationPostRequestBody
from msgraph_beta.generated.models.work_location_update_scope import WorkLocationUpdateScope
from msgraph_beta.generated.models.work_location_type import WorkLocationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetCurrentLocationPostRequestBody(
	update_scope = WorkLocationUpdateScope.CurrentSegment,
	work_location_type = WorkLocationType.Remote,
)

await graph_client.me.settings.work_hours_and_locations.occurrences.set_current_location.post(request_body)


```