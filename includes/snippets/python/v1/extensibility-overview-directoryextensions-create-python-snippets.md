---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.extension_property import ExtensionProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExtensionProperty(
	name = "jobGroupTracker",
	data_type = "String",
	target_objects = [
		"User",
	],
)

result = await graph_client.applications.by_application_id('application-id').extension_properties.post(request_body)


```