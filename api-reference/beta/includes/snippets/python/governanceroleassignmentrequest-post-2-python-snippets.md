---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GovernanceRoleAssignmentRequest()
request_body.role_definition_id = '8b4d1d51-08e9-4254-b0a6-b16177aae376'

request_body.resource_id = 'e5e7d29d-5465-45ac-885f-4716a5ee74b5'

request_body.subject_id = '918e54be-12c4-4f4c-a6d3-2ee0e3661c51'

request_body.assignment_state = 'Active'

request_body.type = 'UserAdd'

request_body.reason = 'Activate the owner role'

schedule = GovernanceSchedule()
schedule.type = 'Once'

schedule.startDateTime = DateTime('2018-05-12T23:28:43.537Z')

schedule.duration =  \DateInterval('PT9H')


request_body.schedule = schedule
request_body.linked_eligible_role_assignment_id = 'e327f4be-42a0-47a2-8579-0a39b025b394'




result = await client.privileged_access.by_privileged_acce_id('privilegedAccess-id').role_assignment_requests.post(request_body = request_body)


```