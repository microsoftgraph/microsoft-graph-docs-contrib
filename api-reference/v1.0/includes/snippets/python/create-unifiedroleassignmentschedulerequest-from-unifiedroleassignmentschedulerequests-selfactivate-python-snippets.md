---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentScheduleRequest()
request_body.action(UnifiedRoleScheduleRequestActions.SelfActivate('unifiedroleschedulerequestactions.selfactivate'))

request_body.principal_id = '071cc716-8147-4397-a5ba-b2105951cc0b'

request_body.role_definition_id = '8424c6f0-a189-499e-bbd0-26c1753c96d4'

request_body.directory_scope_id = '/'

request_body.justification = 'I need access to the Attribute Administrator role to manage attributes to be assigned to restricted AUs'

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2022-04-14T00:00:00.000Z')

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