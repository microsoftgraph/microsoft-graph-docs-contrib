---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationPartner()
request_body.tenant_id = '3d0f5dec-5d3d-455c-8016-e2af1ae4d31a'

b2b_direct_connect_outbound = CrossTenantAccessPolicyB2BSetting()
b2b_direct_connect_outboundusers_and_groups = CrossTenantAccessPolicyTargetConfiguration()
b2b_direct_connect_outboundusers_and_groups.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked('crosstenantaccesspolicytargetconfigurationaccesstype.blocked'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = '6f546279-4da5-4b53-a095-09ea0cef9971'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.Group('crosstenantaccesspolicytargettype.group'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
b2b_direct_connect_outboundusers_and_groups.targets(targetsArray)



b2b_direct_connect_outbound.users_and_groups = b2b_direct_connect_outboundusers_and_groups

request_body.b2b_direct_connect_outbound = b2b_direct_connect_outbound
b2b_direct_connect_inbound = CrossTenantAccessPolicyB2BSetting()
b2b_direct_connect_inboundapplications = CrossTenantAccessPolicyTargetConfiguration()
b2b_direct_connect_inboundapplications.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed('crosstenantaccesspolicytargetconfigurationaccesstype.allowed'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = 'Office365'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.Application('crosstenantaccesspolicytargettype.application'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
b2b_direct_connect_inboundapplications.targets(targetsArray)



b2b_direct_connect_inbound.applications = b2b_direct_connect_inboundapplications

request_body.b2b_direct_connect_inbound = b2b_direct_connect_inbound



result = await client.policies.cro_tenant_acce_policy.partners.post(request_body = request_body)


```