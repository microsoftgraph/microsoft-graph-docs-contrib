---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.AdminAssign('unifiedroleschedulerequestactions.adminassign'))

request_body.justification = 'Assign Groups Admin to IT Helpdesk group'

request_body.role_definition_id = 'fdd7a751-b60b-444a-984c-02652fe8fa1c'

request_body.directory_scope_id = '/'

request_body.principal_id = '071cc716-8147-4397-a5ba-b2105951cc0b'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2022-04-10T00:00:00Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info



result = await client.role_management.directory.role_assignment_schedule_requests.post(request_body = request_body)


```