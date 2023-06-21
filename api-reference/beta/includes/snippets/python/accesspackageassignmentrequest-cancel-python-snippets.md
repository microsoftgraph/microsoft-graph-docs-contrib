---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CancelPostRequestBody()
additional_data = [
'id' => 'request-id', 
'request_status' => 'cancelled', 
];
request_body.additional_data(additional_data)





await client.identity_governance.entitlement_management.acce_package_assignment_requests.by_acce_package_assignment_request_id('accessPackageAssignmentRequest-id').cancel.post(request_body = request_body)


```