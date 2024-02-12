---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.content_type import ContentType

graph_client = GraphServiceClient(credentials, scopes)

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