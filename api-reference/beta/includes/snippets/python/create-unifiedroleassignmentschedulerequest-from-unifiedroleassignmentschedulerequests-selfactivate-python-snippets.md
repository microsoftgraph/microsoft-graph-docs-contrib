---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentScheduleRequest()
request_body.action = 'SelfActivate'

request_body.principal_id = 'c6ad1942-4afa-47f8-8d48-afb5d8d69d2f'

request_body.role_definition_id = '9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3'

request_body.directory_scope_id = '/'

request_body.justification = 'Need to update app roles for selected apps.'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2021-08-17T17:40:00.000Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.type(ExpirationPatternType.AfterDuration('expirationpatterntype.afterduration'))

schedule_infoexpiration.duration =  \DateInterval('PT5H')


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info
ticket_info = TicketInfo()
ticket_info.ticket_number = 'CONTOSO:Normal-67890'

ticket_info.ticket_system = 'MS Project'


request_body.ticket_info = ticket_info



result = await client.role_management.directory.role_assignment_schedule_requests.post(request_body = request_body)


```