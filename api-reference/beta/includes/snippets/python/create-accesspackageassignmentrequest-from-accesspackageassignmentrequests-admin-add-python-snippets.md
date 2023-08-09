---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.request_type = 'AdminAdd'

access_package_assignment = AccessPackageAssignment()
access_package_assignment.target_id = '46184453-e63b-4f20-86c2-c557ed5d5df9'

access_package_assignment.assignment_policy_id = '2264bf65-76ba-417b-a27d-54d291f0cbc8'

access_package_assignment.access_package_id = 'a914b616-e04e-476b-aa37-91038f0b165b'


request_body.access_package_assignment = access_package_assignment



result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.post(request_body = request_body)


```