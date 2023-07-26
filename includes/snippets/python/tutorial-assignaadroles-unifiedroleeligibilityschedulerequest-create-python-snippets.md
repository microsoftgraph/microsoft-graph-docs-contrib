---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleEligibilityScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.AdminAssign('unifiedroleschedulerequestactions.adminassign'))

request_body.justification = 'Assign User Admin eligibility to IT Helpdesk (User) group'

request_body.role_definition_id = 'fe930be7-5e62-47db-91af-98c3a49a38b1'

request_body.directory_scope_id = '/'

request_body.principal_id = 'e77cbb23-0ff2-4e18-819c-690f58269752'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2021-07-01T00:00:00Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.endDateTime = DateTime('2022-06-30T00:00:00Z')

schedule_infoexpiration.type(ExpirationPatternType.AfterDateTime('expirationpatterntype.afterdatetime'))


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info



result = await client.role_management.directory.role_eligibility_schedule_requests.post(request_body = request_body)


```