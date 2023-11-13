---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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