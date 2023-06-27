---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.request_type = 'UserAdd'

access_package_assignment = AccessPackageAssignment()
access_package_assignment.target_id = '007d1c7e-7fa8-4e33-b678-5e437acdcddc'

access_package_assignment.assignment_policy_id = 'db440482-1210-4a60-9b55-3ac7a72f63ba'

access_package_assignment.access_package_id = '88203d16-0e31-41d4-87b2-dd402f1435e9'


request_body.access_package_assignment = access_package_assignment



result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.post(request_body = request_body)


```