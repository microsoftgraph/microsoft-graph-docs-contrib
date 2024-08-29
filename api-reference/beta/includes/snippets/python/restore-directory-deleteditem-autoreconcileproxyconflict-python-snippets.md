---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.deleteditems.item.restore.restore_post_request_body import RestorePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RestorePostRequestBody(
	auto_reconcile_proxy_conflict = True,
)

result = await graph_client.directory.deleted_items.by_directory_object_id('directoryObject-id').restore.post(request_body)


```