---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.document_set_version import DocumentSetVersion
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DocumentSetVersion(
	comment = "v1",
	should_capture_minor_version = False,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').document_set_versions.post(request_body)


```