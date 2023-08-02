---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.request_type = 'UserAdd'

access_package_assignment = AccessPackageAssignment()
access_package_assignment.access_package_id = 'a914b616-e04e-476b-aa37-91038f0b165b'


request_body.access_package_assignment = access_package_assignment
request_body.justification = 'Need access to New Hire access package'




result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.post(request_body = request_body)


```