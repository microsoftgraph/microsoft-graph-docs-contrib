---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.extension import Extension

graph_client = GraphServiceClient(credentials, scopes)

request_body = Extension(
	additional_data = {
			"theme" : "light",
			"color" : "yellow",
			"lang" : "Swahili",
	}
)

result = await graph_client.me.extensions.by_extension_id('extension-id').patch(request_body)


```