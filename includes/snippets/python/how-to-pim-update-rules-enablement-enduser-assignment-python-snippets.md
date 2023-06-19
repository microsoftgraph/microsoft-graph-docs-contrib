---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementPolicyRule()
request_body.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyEnablementRule'

request_body.id = 'Enablement_EndUser_Assignment'

target = UnifiedRoleManagementPolicyRuleTarget()
target.@odata_type = 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget'

target.caller = 'EndUser'

target.Operations([target.unifiedrolemanagementpolicyruletargetoperations(UnifiedRoleManagementPolicyRuleTargetOperations.All('unifiedrolemanagementpolicyruletargetoperations.all'))
])

target.level = 'Assignment'

target.InheritableSettings([])

target.EnforcedSettings([])


request_body.target = target
additional_data = [
'enabled_rules' => ['Justification', 'MultiFactorAuthentication', 'Ticketing', ],
];
request_body.additional_data(additional_data)





result = await client.policies.role_management_policies.by_role_management_policie_id('unifiedRoleManagementPolicy-id').rules.by_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body = request_body)


```