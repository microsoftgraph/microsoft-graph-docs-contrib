---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementPolicyEnablementRule()
request_body.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyEnablementRule'

request_body.id = 'Enablement_Admin_Assignment'

request_body.EnabledRules(['Justification', 'MultiFactorAuthentication', ])

target = UnifiedRoleManagementPolicyRuleTarget()
target.@odata_type = 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget'

target.caller = 'Admin'

target.Operations([target.unifiedrolemanagementpolicyruletargetoperations(UnifiedRoleManagementPolicyRuleTargetOperations.All('unifiedrolemanagementpolicyruletargetoperations.all'))
])

target.level = 'Assignment'

target.InheritableSettings([])

target.EnforcedSettings([])


request_body.target = target



result = await client.policies.role_management_policies.by_role_management_policie_id('unifiedRoleManagementPolicy-id').rules.by_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body = request_body)


```