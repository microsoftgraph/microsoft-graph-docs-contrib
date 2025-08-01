---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "IT Helpdesk to support Contoso employees",
	display_name = "IT Helpdesk (User)",
	mail_enabled = False,
	mail_nickname = "userHelpdesk",
	security_enabled = True,
	is_assignable_to_role = True,
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6",
				"https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725",
			],
	}
)

result = await graph_client.groups.post(request_body)


```