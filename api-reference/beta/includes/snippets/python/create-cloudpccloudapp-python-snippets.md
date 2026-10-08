---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_cloud_app import CloudPcCloudApp
from msgraph_beta.generated.models.cloud_pc_file_path_app_detail import CloudPcFilePathAppDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcCloudApp(
	display_name = "Remote Desktop Connection",
	discovered_app_name = "Remote Desktop Connection",
	provisioning_policy_id = "e31f75e9-25a8-41e9-a9d5-ce8fd484af15",
	description = "",
	app_detail = CloudPcFilePathAppDetail(
		odata_type = "#microsoft.graph.cloudPcFilePathAppDetail",
		file_path = "C:\Windows\system32\mstsc.exe",
		command_line_arguments = "",
		icon_path = "C:\Windows\system32\mstsc.exe",
		icon_index = 0,
	),
)

result = await graph_client.device_management.virtual_endpoint.cloud_apps.post(request_body)


```