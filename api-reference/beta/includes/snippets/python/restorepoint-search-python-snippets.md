---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backuprestore.restorepoints.search.search_post_request_body import SearchPostRequestBody
from msgraph_beta.generated.models.time_period import TimePeriod
from msgraph_beta.generated.models.restore_point_preference import RestorePointPreference
from msgraph_beta.generated.models.restore_point_tags import RestorePointTags

graph_client = GraphServiceClient(credentials, scopes)

request_body = SearchPostRequestBody(
	protection_unit_ids = [
		"23014d8c-71fe-4d00-a01a-31850bc5b42a",
		"43014d8c-71fe-4d00-a01a-31850bc5b42b",
		"63014d8c-71fe-4d00-a01a-31850bc5b42c",
		"83014d8c-71fe-4d00-a01a-31850bc5b42d",
	],
	protection_time_period = TimePeriod(
		start_date_time = "2021-01-01T00:00:00Z",
		end_date_time = "2021-01-08T00:00:00Z",
	),
	restore_point_preference = RestorePointPreference.Latest,
	tags = RestorePointTags.FastRestore,
)

result = await graph_client.solutions.backup_restore.restore_points.search.post(request_body)


```