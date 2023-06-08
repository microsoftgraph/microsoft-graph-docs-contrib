---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'New Policy'

request_body.description = 'policy for assignment'

request_body.allowedtargetscope(AllowedTargetScope.NotSpecified('allowedtargetscope.notspecified'))

request_body.SpecificAllowedTargets([])

expiration = ExpirationPattern()
expiration.endDateTime=null

expiration.duration=null

expiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


request_body.expiration = expiration
requestor_settings = AccessPackageAssignmentRequestorSettings()
requestor_settings.enable_targets_to_self_add_access = False

requestor_settings.enable_targets_to_self_update_access = False

requestor_settings.enable_targets_to_self_remove_access = False

requestor_settings.allow_custom_assignment_schedule = True

requestor_settings.enable_on_behalf_requestors_to_add_access = False

requestor_settings.enable_on_behalf_requestors_to_update_access = False

requestor_settings.enable_on_behalf_requestors_to_remove_access = False

requestor_settings.OnBehalfRequestors([])


request_body.requestor_settings = requestor_settings
request_approval_settings = AccessPackageAssignmentApprovalSettings()
request_approval_settings.is_approval_required_for_add = False

request_approval_settings.is_approval_required_for_update = False

request_approval_settings.Stages([])


request_body.request_approval_settings = request_approval_settings
access_package = AccessPackage()
access_package.id = 'a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b'


request_body.access_package = access_package



result = await client.identity_governance.entitlement_management.assignment_policies.post(request_body = request_body)


```