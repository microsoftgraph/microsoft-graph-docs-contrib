---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AppRoleAssignmentsPostRequestBody()
additional_data = [
'principal_id' => '4628e7df-dff3-407c-a08f-75f08c0806dc', 
'principal_type' => 'User', 
'app_role_id' => '18d14569-c3bd-439b-9a66-3a2aee01d14f', 
'resource_id' => 'a8cac399-cde5-4516-a674-819503c61313', 
];
request_body.additional_data(additional_data)





await client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body = request_body)


```