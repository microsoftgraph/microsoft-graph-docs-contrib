---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationDefault()
b2b_collaboration_outbound = CrossTenantAccessPolicyB2BSetting()
b2b_collaboration_outboundusers_and_groups = CrossTenantAccessPolicyTargetConfiguration()
b2b_collaboration_outboundusers_and_groups.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked('crosstenantaccesspolicytargetconfigurationaccesstype.blocked'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = '0be493dc-cb56-4a53-936f-9cf64410b8b0'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.Group('crosstenantaccesspolicytargettype.group'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
b2b_collaboration_outboundusers_and_groups.targets(targetsArray)



b2b_collaboration_outbound.users_and_groups = b2b_collaboration_outboundusers_and_groups
b2b_collaboration_outboundapplications = CrossTenantAccessPolicyTargetConfiguration()
b2b_collaboration_outboundapplications.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked('crosstenantaccesspolicytargetconfigurationaccesstype.blocked'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = 'AllApplications'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.Application('crosstenantaccesspolicytargettype.application'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
b2b_collaboration_outboundapplications.targets(targetsArray)



b2b_collaboration_outbound.applications = b2b_collaboration_outboundapplications

request_body.b2b_collaboration_outbound = b2b_collaboration_outbound



result = await client.policies.cro_tenant_acce_policy.default.patch(request_body = request_body)


```