---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationPartner()
tenant_restrictions = CrossTenantAccessPolicyTenantRestrictions()
tenant_restrictionsusers_and_groups = CrossTenantAccessPolicyTargetConfiguration()
tenant_restrictionsusers_and_groups.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed('crosstenantaccesspolicytargetconfigurationaccesstype.allowed'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = 'AllUsers'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.User('crosstenantaccesspolicytargettype.user'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
tenant_restrictionsusers_and_groups.targets(targetsArray)



tenant_restrictions.users_and_groups = tenant_restrictionsusers_and_groups
tenant_restrictionsapplications = CrossTenantAccessPolicyTargetConfiguration()
tenant_restrictionsapplications.accesstype(CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed('crosstenantaccesspolicytargetconfigurationaccesstype.allowed'))

targets_cross_tenant_access_policy_target1 = CrossTenantAccessPolicyTarget()
targets_cross_tenant_access_policy_target1.target = 'Office365'

targets_cross_tenant_access_policy_target1.targettype(CrossTenantAccessPolicyTargetType.Application('crosstenantaccesspolicytargettype.application'))


targetsArray []= targetsCrossTenantAccessPolicyTarget1;
tenant_restrictionsapplications.targets(targetsArray)



tenant_restrictions.applications = tenant_restrictionsapplications

request_body.tenant_restrictions = tenant_restrictions



result = await client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body = request_body)


```