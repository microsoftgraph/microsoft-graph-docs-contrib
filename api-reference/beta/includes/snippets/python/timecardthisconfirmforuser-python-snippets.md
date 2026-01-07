---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.schedule.timecards.item.confirm_for_user.confirm_for_user_post_request_body import ConfirmForUserPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfirmForUserPostRequestBody(
	user_id = "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.by_time_card_id('timeCard-id').confirm_for_user.post(request_body)


```