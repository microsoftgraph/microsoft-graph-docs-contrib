---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Feelgood Marketing Campaign with external partners and vendors.",
	display_name = "Feelgood Marketing Campaign",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "FeelGoodCampaign",
	security_enabled = True,
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20",
			],
	}
)

result = await graph_client.groups.post(request_body)


```