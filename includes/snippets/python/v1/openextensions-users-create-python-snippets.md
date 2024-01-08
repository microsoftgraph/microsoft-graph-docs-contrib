---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OpenTypeExtension(
	odata_type = "microsoft.graph.openTypeExtension",
	extension_name = "com.contoso.roamingSettings",
	additional_data = {
			"theme" : "dark",
			"color" : "purple",
			"lang" : "Japanese",
	}
)

result = await graph_client.me.extensions.post(request_body)


```