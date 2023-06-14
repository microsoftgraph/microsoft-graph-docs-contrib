---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementPolicyRule()
request_body.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyExpirationRule'

request_body.id = 'Expiration_Admin_Eligibility'

target = UnifiedRoleManagementPolicyRuleTarget()
target.@odata_type = 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget'

target.caller = 'Admin'

target.Operations([target.unifiedrolemanagementpolicyruletargetoperations(UnifiedRoleManagementPolicyRuleTargetOperations.All('unifiedrolemanagementpolicyruletargetoperations.all'))
])

target.level = 'Eligibility'

target.InheritableSettings([])

target.EnforcedSettings([])


request_body.target = target
additional_data = [
'is_expiration_required' => true,
'maximum_duration' => 'P90D', 
];
request_body.additional_data(additional_data)





result = await client.policies.role_management_policies.by_role_management_policie_id('unifiedRoleManagementPolicy-id').rules.by_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body = request_body)


```