---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.teamwork_tag import TeamworkTag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamworkTag(
	display_name = "Finance",
)

result = await graph_client.teams.by_team_id('team-id').tags.by_teamwork_tag_id('teamworkTag-id').patch(request_body)


```