---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleEligibilityScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.AdminRemove('unifiedroleschedulerequestactions.adminremove'))

request_body.role_definition_id = '8424c6f0-a189-499e-bbd0-26c1753c96d4'

request_body.directory_scope_id = '/'

request_body.principal_id = '071cc716-8147-4397-a5ba-b2105951cc0b'




result = await client.role_management.directory.role_eligibility_schedule_requests.post(request_body = request_body)


```