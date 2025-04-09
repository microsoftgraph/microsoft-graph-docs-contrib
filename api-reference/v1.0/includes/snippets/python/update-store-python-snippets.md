---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.term_store.store import Store
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Store(
	default_language_tag = "en-US",
)

result = await graph_client.sites.by_site_id('site-id').term_store.patch(request_body)


```