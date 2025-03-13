---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "Marketing department folks",
	display_name = "Marketing department",
	group_types = [
		"Unified",
		"DynamicMembership",
	],
	mail_enabled = True,
	mail_nickname = "marketing",
	security_enabled = False,
	membership_rule = "user.department -eq \"Marketing\"",
	membership_rule_processing_state = "on",
)

result = await graph_client.groups.post(request_body)


```