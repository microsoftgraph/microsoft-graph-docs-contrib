---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.share_post_request_body import SharePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SharePostRequestBody(
	notify_team = True,
	start_date_time = "2018-10-08T00:00:00.000Z",
	end_date_time = "2018-10-15T00:00:00.000Z",
)

await graph_client.teams.by_team_id('team-id').schedule.share.post(request_body)


```