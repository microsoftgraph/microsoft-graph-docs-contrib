---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_provisioning_policy import CloudPcProvisioningPolicy
from msgraph_beta.generated.models.cloud_pc_provisioning_policy_image_type import CloudPcProvisioningPolicyImageType
from msgraph_beta.generated.models.cloud_pc_windows_settings import CloudPcWindowsSettings
from msgraph_beta.generated.models.cloud_pc_windows_setting import CloudPcWindowsSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcProvisioningPolicy(
	odata_type = "#microsoft.graph.cloudPcProvisioningPolicy",
	display_name = "HR provisioning policy",
	description = "Provisioning policy for India HR employees",
	image_id = "Image ID value",
	image_display_name = "Image Display Name value",
	image_type = CloudPcProvisioningPolicyImageType.Custom,
	windows_settings = CloudPcWindowsSettings(
		language = "en-US",
	),
	windows_setting = CloudPcWindowsSetting(
		locale = "en-US",
	),
	additional_data = {
			"on_premises_connection_id" : "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	}
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').patch(request_body)


```