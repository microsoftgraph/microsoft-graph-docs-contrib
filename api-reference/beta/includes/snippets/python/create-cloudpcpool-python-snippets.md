---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_agent_pool import CloudPcAgentPool
from msgraph_beta.generated.models.cloud_pc_configuration import CloudPcConfiguration
from msgraph_beta.generated.models.cloud_pc_provisioning_policy_image_type import CloudPcProvisioningPolicyImageType
from msgraph_beta.generated.models.cloud_pc_microsoft_hosted_network_configuration import CloudPcMicrosoftHostedNetworkConfiguration
from msgraph_beta.generated.models.cloud_pc_geographic_location_type import CloudPcGeographicLocationType
from msgraph_beta.generated.models.cloud_pc_region_group_configuration import CloudPcRegionGroupConfiguration
from msgraph_beta.generated.models.cloud_pc_region_group import CloudPcRegionGroup
from msgraph_beta.generated.models.cloud_pc_agent_pool_billing_configuration import CloudPcAgentPoolBillingConfiguration
from msgraph_beta.generated.models.cloud_pc_agent_pool_billing_type import CloudPcAgentPoolBillingType
from msgraph_beta.generated.models.cloud_pc_agent_pool_scaling_policy import CloudPcAgentPoolScalingPolicy
from msgraph_beta.generated.models.cloud_pc_agent_pool_capability_configuration import CloudPcAgentPoolCapabilityConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcAgentPool(
	odata_type = "#microsoft.graph.cloudPcAgentPool",
	display_name = "Contoso Development Pool",
	cloud_pc_configuration = CloudPcConfiguration(
		image_id = "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365",
		image_type = CloudPcProvisioningPolicyImageType.Gallery,
		os_locale = "en-US",
	),
	network_configuration = CloudPcMicrosoftHostedNetworkConfiguration(
		odata_type = "#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration",
		geographic_location_type = CloudPcGeographicLocationType.UsWest,
		region_groups = [
			CloudPcRegionGroupConfiguration(
				region_group = CloudPcRegionGroup.UsWest,
				regions = [
					"westus2",
					"westus3",
				],
			),
		],
	),
	billing_configuration = CloudPcAgentPoolBillingConfiguration(
		billing_type = CloudPcAgentPoolBillingType.PayAsYouGo,
		billing_plan_id = "00000000-0000-0000-0000-000000000001",
	),
	scaling_policy = CloudPcAgentPoolScalingPolicy(
		minimum_count = 2,
		maximum_count = 10,
	),
	capabilities = CloudPcAgentPoolCapabilityConfiguration(
		odata_type = "#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration",
		enable_single_sign_on = True,
	),
)

result = await graph_client.device_management.virtual_endpoint.cloud_pc_pools.post(request_body)


```