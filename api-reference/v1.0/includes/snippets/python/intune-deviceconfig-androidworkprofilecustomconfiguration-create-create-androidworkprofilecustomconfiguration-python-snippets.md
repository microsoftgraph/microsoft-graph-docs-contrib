---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.android_work_profile_custom_configuration import AndroidWorkProfileCustomConfiguration
from msgraph.generated.models.oma_setting import OmaSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AndroidWorkProfileCustomConfiguration(
	odata_type = "#microsoft.graph.androidWorkProfileCustomConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	oma_settings = [
		OmaSetting(
			odata_type = "microsoft.graph.omaSetting",
			display_name = "Display Name value",
			description = "Description value",
			oma_uri = "Oma Uri value",
		),
	],
)

result = await graph_client.device_management.device_configurations.post(request_body)


```