---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups(uniqueName='{uniqueName}').groups_with_unique_name_request_builder import GroupsWithUniqueNameRequestBuilder
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Self help community for golf",
	display_name = "Golf Assist",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "golfassist",
	security_enabled = False,
)

request_configuration = GroupsWithUniqueNameRequestBuilder.GroupsWithUniqueNameRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.groups_with_unique_name("{uniqueName}").patch(request_body, request_configuration = request_configuration)


```