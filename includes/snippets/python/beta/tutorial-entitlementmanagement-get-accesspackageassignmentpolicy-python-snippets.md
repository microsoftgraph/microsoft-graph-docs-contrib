---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.access_package_id = '88203d16-0e31-41d4-87b2-dd402f1435e9'

request_body.display_name = 'Specific users'

request_body.description = 'Specific users can request assignment'

request_body.accessReviewSettings=null

request_body.DurationInDays = 30

requestor_settings = RequestorSettings()
requestor_settings.scope_type = 'SpecificDirectorySubjects'

requestor_settings.accept_requests = True

allowed_requestors_user_set1 = SingleUser()
allowed_requestors_user_set1.@odata_type = '#microsoft.graph.singleUser'

allowed_requestors_user_set1.is_backup = False

allowed_requestors_user_set1.id = '007d1c7e-7fa8-4e33-b678-5e437acdcddc'

allowed_requestors_user_set1.description = 'Requestor1'


allowedRequestorsArray []= allowedRequestorsUserSet1;
requestor_settings.allowedrequestors(allowedRequestorsArray)



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