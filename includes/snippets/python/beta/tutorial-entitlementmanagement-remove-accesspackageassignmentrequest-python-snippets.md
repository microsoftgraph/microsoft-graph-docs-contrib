---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.request_type = 'AdminRemove'

access_package_assignment = AccessPackageAssignment()
access_package_assignment.id = 'a6bb6942-3ae1-4259-9908-0133aaee9377'


request_body.access_package_assignment = access_package_assignment



result = await client.identity_governance.entitlement_management.acces_package_assignment_requests.post(request_body = request_body)


```