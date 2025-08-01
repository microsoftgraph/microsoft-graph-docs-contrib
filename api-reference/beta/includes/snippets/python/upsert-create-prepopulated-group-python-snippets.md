---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "Group with designated owner and members",
	display_name = "Operations group",
	group_types = [
	],
	mail_enabled = False,
	mail_nickname = "operations2019",
	security_enabled = True,
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/beta/users/ff7cb387-6688-423c-8188-3da9532a73cc",
				"https://graph.microsoft.com/beta/users/69456242-0067-49d3-ba96-9de6f2728e14",
			],
	}
)

result = await graph_client.groups_with_unique_name("{uniqueName}").patch(request_body)


```