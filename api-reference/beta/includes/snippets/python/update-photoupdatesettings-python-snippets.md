---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.photo_update_settings import PhotoUpdateSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PhotoUpdateSettings(
	odata_type = "#microsoft.graph.photoUpdateSettings",
	allowed_roles = [
		"String",
	],
	additional_data = {
			"source" : "String",
	}
)

result = await graph_client.admin.people.photo_update_settings.patch(request_body)


```