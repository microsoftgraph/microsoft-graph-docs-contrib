---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.document_set_version import DocumentSetVersion

graph_client = GraphServiceClient(credentials, scopes)

request_body = DocumentSetVersion(
	comment = "v1",
	should_capture_minor_version = False,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').document_set_versions.post(request_body)


```