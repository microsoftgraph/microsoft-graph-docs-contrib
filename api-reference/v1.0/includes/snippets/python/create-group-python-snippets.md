---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "Self help community for library",
	display_name = "Library Assist",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "library",
	security_enabled = False,
)

result = await graph_client.groups.post(request_body)


```