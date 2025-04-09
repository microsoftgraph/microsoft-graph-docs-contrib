---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph.generated.models.cross_tenant_access_policy_b2_b_setting import CrossTenantAccessPolicyB2BSetting
from msgraph.generated.models.cross_tenant_access_policy_target_configuration import CrossTenantAccessPolicyTargetConfiguration
from msgraph.generated.models.cross_tenant_access_policy_target_configuration_access_type import CrossTenantAccessPolicyTargetConfigurationAccessType
from msgraph.generated.models.cross_tenant_access_policy_target import CrossTenantAccessPolicyTarget
from msgraph.generated.models.cross_tenant_access_policy_target_type import CrossTenantAccessPolicyTargetType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantAccessPolicyConfigurationPartner(
	tenant_id = "3d0f5dec-5d3d-455c-8016-e2af1ae4d31a",
	b2b_direct_connect_outbound = CrossTenantAccessPolicyB2BSetting(
		users_and_groups = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "6f546279-4da5-4b53-a095-09ea0cef9971",
					target_type = CrossTenantAccessPolicyTargetType.Group,
				),
			],
		),
	),
	b2b_direct_connect_inbound = CrossTenantAccessPolicyB2BSetting(
		applications = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "Office365",
					target_type = CrossTenantAccessPolicyTargetType.Application,
				),
			],
		),
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.post(request_body)


```