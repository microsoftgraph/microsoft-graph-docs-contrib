---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleEligibilityScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.AdminRemove('unifiedroleschedulerequestactions.adminremove'))

request_body.principal_id = 'e77cbb23-0ff2-4e18-819c-690f58269752'

request_body.role_definition_id = 'fe930be7-5e62-47db-91af-98c3a49a38b1'

request_body.directory_scope_id = '/'




result = await client.role_management.directory.role_eligibility_schedule_requests.post(request_body = request_body)


```