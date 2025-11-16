---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_provisioning_policy import CloudPcProvisioningPolicy
from msgraph_beta.generated.models.cloud_pc_domain_join_configuration import CloudPcDomainJoinConfiguration
from msgraph_beta.generated.models.cloud_pc_domain_join_type import CloudPcDomainJoinType
from msgraph_beta.generated.models.cloud_pc_provisioning_policy_image_type import CloudPcProvisioningPolicyImageType
from msgraph_beta.generated.models.cloud_pc_windows_settings import CloudPcWindowsSettings
from msgraph_beta.generated.models.cloud_pc_windows_setting import CloudPcWindowsSetting
from msgraph_beta.generated.models.cloud_pc_provisioning_type import CloudPcProvisioningType
from msgraph_beta.generated.models.cloud_pc_user_settings_persistence_configuration import CloudPcUserSettingsPersistenceConfiguration
from msgraph_beta.generated.models.cloud_pc_user_settings_persistence_storage_size_category import CloudPcUserSettingsPersistenceStorageSizeCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcProvisioningPolicy(
	odata_type = "#microsoft.graph.cloudPcProvisioningPolicy",
	description = "Description value",
	display_name = "Display Name value",
	domain_join_configurations = [
		CloudPcDomainJoinConfiguration(
			on_premises_connection_id = "16ee6c71-fc10-438b-88ac-daa1ccafffff",
			type = CloudPcDomainJoinType.HybridAzureADJoin,
		),
		CloudPcDomainJoinConfiguration(
			on_premises_connection_id = "26e16c71-f210-438b-88ac-d481ccafffff",
			type = CloudPcDomainJoinType.HybridAzureADJoin,
		),
	],
	id = "1d164206-bf41-4fd2-8424-a3192d39ffff",
	enable_single_sign_on = True,
	image_display_name = "Windows-10 19h1-evd",
	image_id = "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
	image_type = CloudPcProvisioningPolicyImageType.Gallery,
	windows_settings = CloudPcWindowsSettings(
		language = "en-US",
	),
	windows_setting = CloudPcWindowsSetting(
		locale = "en-US",
	),
	provisioning_type = CloudPcProvisioningType.Dedicated,
	user_settings_persistence_configuration = CloudPcUserSettingsPersistenceConfiguration(
		user_settings_persistence_enabled = True,
		user_settings_persistence_storage_size_category = CloudPcUserSettingsPersistenceStorageSizeCategory.FourGB,
	),
	additional_data = {
			"domain_join_configuration" : {
					"domain_join_type" : "hybridAzureADJoin",
					"on_premises_connection_id" : "16ee6c71-fc10-438b-88ac-daa1ccafffff",
			},
			"on_premises_connection_id" : "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	}
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.post(request_body)


```