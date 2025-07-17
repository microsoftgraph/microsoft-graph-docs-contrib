---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	additional_data = {
			"extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable" : None,
			"extension_b7d8e648520f41d3b9c0fdeb91768a0a_job_group_tracker" : "E4",
	}
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```