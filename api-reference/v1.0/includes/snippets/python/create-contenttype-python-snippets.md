---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.content_type import ContentType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentType(
	name = "docSet",
	description = "custom docset",
	base = ContentType(
		name = "Document Set",
		id = "0x0120D520",
	),
	group = "Document Set Content Types",
)

result = await graph_client.sites.by_site_id('site-id').content_types.post(request_body)


```