---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.extension_property import ExtensionProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExtensionProperty(
	name = "jobGroup",
	data_type = "String",
	is_multi_valued = True,
	target_objects = [
		"User",
	],
)

result = await graph_client.applications.by_application_id('application-id').extension_properties.post(request_body)


```