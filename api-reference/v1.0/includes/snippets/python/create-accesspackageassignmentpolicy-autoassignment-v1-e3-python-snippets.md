---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'Sales department users'

request_body.description = 'All users from sales department'

request_body.allowedtargetscope(AllowedTargetScope.SpecificDirectoryUsers('allowedtargetscope.specificdirectoryusers'))

specific_allowed_targets_subject_set1 = AttributeRuleMembers()
specific_allowed_targets_subject_set1.@odata_type = '#microsoft.graph.attributeRuleMembers'

specific_allowed_targets_subject_set1.description = 'Membership rule for all users from sales department'

specific_allowed_targets_subject_set1.membership_rule = '(user.department -eq \"Sales\")'


specificAllowedTargetsArray []= specificAllowedTargetsSubjectSet1;
request_body.specificallowedtargets(specificAllowedTargetsArray)


automatic_request_settings = AccessPackageAutomaticRequestSettings()
automatic_request_settings.request_access_for_allowed_targets = True

automatic_request_settings.remove_access_when_target_leaves_allowed_targets = True

automatic_request_settings.graceperiodbeforeaccessremoval =  \DateInterval('P7D')


request_body.automatic_request_settings = automatic_request_settings
access_package = AccessPackage()
access_package.id = '8a36831e-1527-4b2b-aff2-81259a8d8e76'


request_body.access_package = access_package



result = await client.identity_governance.entitlement_management.assignment_policies.post(request_body = request_body)


```