---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequest()
request_body.requesttype(AccessPackageRequestType.UserAdd('accesspackagerequesttype.useradd'))

assignment = AccessPackageAssignment()
additional_data = [
'access_package_id' => 'd7be3253-b9c6-4fab-adef-30d30de8da2b', 
];
assignment.additional_data(additional_data)



request_body.assignment = assignment



result = await client.identity_governance.entitlement_management.assignment_requests.post(request_body = request_body)


```