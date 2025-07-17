---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.check_member_objects.check_member_objects_post_request_body import CheckMemberObjectsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CheckMemberObjectsPostRequestBody(
	ids = [
		"80a963dd-84af-4eb8-b2a6-781e444d4fb0",
		"62e90394-69f5-4237-9190-012177145e10",
		"86a64f51-3a64-4cc6-a8c8-6b8f000c0f52",
		"ac38546e-ddf3-437a-ac5c-27a94cd7a0f1",
	],
)

result = await graph_client.me.check_member_objects.post(request_body)


```