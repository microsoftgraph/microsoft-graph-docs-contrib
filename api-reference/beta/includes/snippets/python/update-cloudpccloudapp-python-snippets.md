---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_cloud_app import CloudPcCloudApp
from msgraph_beta.generated.models.cloud_pc_cloud_app_detail import CloudPcCloudAppDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcCloudApp(
	odata_type = "#microsoft.graph.cloudPcCloudApp",
	display_name = "Cloud App example3",
	app_detail = CloudPcCloudAppDetail(
		icon_path = "C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe",
	),
)

result = await graph_client.device_management.virtual_endpoint.cloud_apps.by_cloud_pc_cloud_app_id('cloudPcCloudApp-id').patch(request_body)


```