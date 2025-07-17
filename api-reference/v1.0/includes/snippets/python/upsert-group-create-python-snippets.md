---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.groups(unique_name='{unique_name}').groups_with_unique_name_request_builder import GroupsWithUniqueNameRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.groups_with_unique_name("{uniqueName}").patch(request_body, request_configuration = request_configuration)


```