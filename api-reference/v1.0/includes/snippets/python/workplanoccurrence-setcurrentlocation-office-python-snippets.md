---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.settings.workhoursandlocations.occurrences.set_current_location.set_current_location_post_request_body import SetCurrentLocationPostRequestBody
from msgraph.generated.models.work_location_update_scope import WorkLocationUpdateScope
from msgraph.generated.models.work_location_type import WorkLocationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetCurrentLocationPostRequestBody(
	update_scope = WorkLocationUpdateScope.CurrentDay,
	work_location_type = WorkLocationType.Office,
	place_id = "12345678-1234-1234-1234-123456789012",
)

await graph_client.me.settings.work_hours_and_locations.occurrences.set_current_location.post(request_body)


```