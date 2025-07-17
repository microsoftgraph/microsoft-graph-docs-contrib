---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Team(
	display_name = "My Class Team",
	description = "My Class Team’s Description",
	additional_data = {
			"template@odata_bind" : "https://graph.microsoft.com/v1.0/teamsTemplates('educationClass')",
	}
)

result = await graph_client.teams.post(request_body)


```