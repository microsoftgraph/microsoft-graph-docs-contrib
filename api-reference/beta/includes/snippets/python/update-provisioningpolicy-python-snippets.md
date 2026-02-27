---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_provisioning_policy import CloudPcProvisioningPolicy
from msgraph_beta.generated.models.cloud_pc_provisioning_policy_image_type import CloudPcProvisioningPolicyImageType
from msgraph_beta.generated.models.cloud_pc_windows_settings import CloudPcWindowsSettings
from msgraph_beta.generated.models.cloud_pc_windows_setting import CloudPcWindowsSetting
from msgraph_beta.generated.models.microsoft_managed_desktop import MicrosoftManagedDesktop
from msgraph_beta.generated.models.microsoft_managed_desktop_type import MicrosoftManagedDesktopType
from msgraph_beta.generated.models.cloud_pc_provisioning_policy_autopatch import CloudPcProvisioningPolicyAutopatch
from msgraph_beta.generated.models.cloud_pc_autopilot_configuration import CloudPcAutopilotConfiguration
from msgraph_beta.generated.models.cloud_pc_user_settings_persistence_configuration import CloudPcUserSettingsPersistenceConfiguration
from msgraph_beta.generated.models.cloud_pc_user_settings_persistence_storage_size_category import CloudPcUserSettingsPersistenceStorageSizeCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
	microsoft_managed_desktop = MicrosoftManagedDesktop(
		managed_type = MicrosoftManagedDesktopType.StarterManaged,
		profile = None,
	),
	autopatch = CloudPcProvisioningPolicyAutopatch(
		autopatch_group_id = "91197a0b-3a74-408d-ba88-bce3fdc4e5eb",
	),
	autopilot_configuration = CloudPcAutopilotConfiguration(
		device_preparation_profile_id = "59e5d3d2-ec68-4bfe-9693-27975b318990",
		application_timeout_in_minutes = 30,
		on_failure_device_access_denied = False,
	),
	user_settings_persistence_configuration = CloudPcUserSettingsPersistenceConfiguration(
		user_settings_persistence_enabled = False,
		user_settings_persistence_storage_size_category = CloudPcUserSettingsPersistenceStorageSizeCategory.FourGB,
	),
	additional_data = {
			"on_premises_connection_id" : "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	}
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').patch(request_body)


```