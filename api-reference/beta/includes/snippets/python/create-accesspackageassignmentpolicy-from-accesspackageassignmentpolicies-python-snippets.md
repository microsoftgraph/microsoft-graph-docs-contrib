---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.access_package_id = '56ff43fd-6b05-48df-9634-956a777fce6d'

request_body.display_name = 'direct'

request_body.description = 'direct assignments by administrator'

request_body.accessReviewSettings=null

requestor_settings = RequestorSettings()
requestor_settings.scope_type = 'NoSubjects'

requestor_settings.accept_requests = True

requestor_settings.AllowedRequestors([])


request_body.requestor_settings = requestor_settings
request_approval_settings = ApprovalSettings()
request_approval_settings.is_approval_required = False

request_approval_settings.is_approval_required_for_extension = False

request_approval_settings.is_requestor_justification_required = False

request_approval_settings.approval_mode = 'NoApproval'

request_approval_settings.ApprovalStages([])


request_body.request_approval_settings = request_approval_settings



result = await client.identity_governance.entitlement_management.acces_package_assignment_policies.post(request_body = request_body)


```