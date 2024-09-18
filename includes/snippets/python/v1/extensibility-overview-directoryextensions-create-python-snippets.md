---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.extension_property import ExtensionProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExtensionProperty(
	name = "jobGroupTracker",
	data_type = "String",
	target_objects = [
		"User",
	],
)

result = await graph_client.applications.by_application_id('application-id').extension_properties.post(request_body)


```