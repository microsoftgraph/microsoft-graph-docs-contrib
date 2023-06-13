---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GovernanceRoleAssignmentRequest()
request_body.role_definition_id = '0e88fd18-50f5-4ee1-9104-01c3ed910065'

request_body.resource_id = 'e5e7d29d-5465-45ac-885f-4716a5ee74b5'

request_body.subject_id = '74765671-9ca4-40d7-9e36-2f4a570608a6'

request_body.assignment_state = 'Eligible'

request_body.type = 'AdminExtend'

request_body.reason = 'extend role assignment'

schedule = GovernanceSchedule()
schedule.type = 'Once'

schedule.startDateTime = DateTime('2018-05-12T23:53:55.327Z')

schedule.endDateTime = DateTime('2018-08-10T23:53:55.327Z')


request_body.schedule = schedule



result = await client.privileged_access.by_privileged_acce_id('privilegedAccess-id').role_assignment_requests.post(request_body = request_body)


```