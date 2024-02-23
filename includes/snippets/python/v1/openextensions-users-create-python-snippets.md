---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.open_type_extension import OpenTypeExtension

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