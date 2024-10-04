---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.extension import Extension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Extension(
	additional_data = {
			"theme" : "light",
			"color" : "yellow",
			"lang" : "Swahili",
	}
)

result = await graph_client.me.extensions.by_extension_id('extension-id').patch(request_body)


```