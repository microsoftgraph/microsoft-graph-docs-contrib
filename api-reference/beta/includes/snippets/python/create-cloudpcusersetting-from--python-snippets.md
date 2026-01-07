---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_user_setting import CloudPcUserSetting
from msgraph_beta.generated.models.cloud_pc_cross_region_disaster_recovery_setting import CloudPcCrossRegionDisasterRecoverySetting
from msgraph_beta.generated.models.cloud_pc_disaster_recovery_network_setting import CloudPcDisasterRecoveryNetworkSetting
from msgraph_beta.generated.models.cloud_pc_disaster_recovery_type import CloudPcDisasterRecoveryType
from msgraph_beta.generated.models.cloud_pc_provisioning_source_type import CloudPcProvisioningSourceType
from msgraph_beta.generated.models.cloud_pc_restore_point_setting import CloudPcRestorePointSetting
from msgraph_beta.generated.models.cloud_pc_restore_point_frequency_type import CloudPcRestorePointFrequencyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcUserSetting(
	odata_type = "#microsoft.graph.cloudPcUserSetting",
	display_name = "Example",
	self_service_enabled = False,
	local_admin_enabled = True,
	cross_region_disaster_recovery_setting = CloudPcCrossRegionDisasterRecoverySetting(
		cross_region_disaster_recovery_enabled = False,
		maintain_cross_region_restore_point_enabled = True,
		disaster_recovery_network_setting = CloudPcDisasterRecoveryNetworkSetting(
			additional_data = {
					"region_name" : "westus",
					"region_group" : "usEast",
			}
		),
		disaster_recovery_type = CloudPcDisasterRecoveryType.Premium,
		user_initiated_disaster_recovery_allowed = True,
	),
	provisioning_source_type = CloudPcProvisioningSourceType.Image,
	restore_point_setting = CloudPcRestorePointSetting(
		frequency_in_hours = 16,
		frequency_type = CloudPcRestorePointFrequencyType.SixteenHours,
		user_restore_enabled = True,
	),
)

result = await graph_client.device_management.virtual_endpoint.user_settings.post(request_body)


```