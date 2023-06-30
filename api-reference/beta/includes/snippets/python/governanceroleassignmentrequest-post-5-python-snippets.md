---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GovernanceRoleAssignmentRequest()
request_body.role_definition_id = '70521f3e-3b95-4e51-b4d2-a2f485b02103'

request_body.resource_id = 'e5e7d29d-5465-45ac-885f-4716a5ee74b5'

request_body.subject_id = '1566d11d-d2b6-444a-a8de-28698682c445'

request_body.assignment_state = 'Eligible'

request_body.type = 'AdminUpdate'

schedule = GovernanceSchedule()
schedule.type = 'Once'

schedule.startDateTime = DateTime('2018-03-08T05:42:45.317Z')

schedule.endDateTime = DateTime('2018-06-05T05:42:31.000Z')


request_body.schedule = schedule



result = await client.privileged_access.by_privileged_acce_id('privilegedAccess-id').role_assignment_requests.post(request_body = request_body)


```