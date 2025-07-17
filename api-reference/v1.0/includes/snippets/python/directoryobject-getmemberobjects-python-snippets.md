---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directoryobjects.item.get_member_objects.get_member_objects_post_request_body import GetMemberObjectsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetMemberObjectsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.directory_objects.by_directory_object_id('directoryObject-id').get_member_objects.post(request_body)


```