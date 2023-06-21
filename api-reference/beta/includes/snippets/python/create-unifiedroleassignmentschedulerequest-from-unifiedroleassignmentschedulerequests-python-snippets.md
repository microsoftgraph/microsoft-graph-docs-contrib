---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentScheduleRequest()
request_body.action = 'AdminAssign'

request_body.justification = 'Assign User Admin to IT Helpdesk (User) group'

request_body.role_definition_id = 'fdd7a751-b60b-444a-984c-02652fe8fa1c'

request_body.directory_scope_id = '/'

request_body.principal_id = '07706ff1-46c7-4847-ae33-3003830675a1'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2021-07-01T00:00:00Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info



result = await client.role_management.directory.role_assignment_schedule_requests.post(request_body = request_body)


```