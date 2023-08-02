---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.SelfActivate('unifiedroleschedulerequestactions.selfactivate'))

request_body.principal_id = '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'

request_body.role_definition_id = 'fe930be7-5e62-47db-91af-98c3a49a38b1'

request_body.directory_scope_id = '/'

request_body.justification = 'Need to invalidate all app refresh tokens for Contoso users.'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2021-09-04T15:13:00.000Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.type(ExpirationPatternType.AfterDuration('expirationpatterntype.afterduration'))

schedule_infoexpiration.duration =  \DateInterval('PT5H')


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info
ticket_info = TicketInfo()
ticket_info.ticket_number = 'CONTOSO:Security-012345'

ticket_info.ticket_system = 'Contoso ICM'


request_body.ticket_info = ticket_info



result = await client.role_management.directory.role_assignment_schedule_requests.post(request_body = request_body)


```