---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GovernanceRoleAssignmentRequest()
request_body.role_definition_id = 'ea48ad5e-e3b0-4d10-af54-39a45bbfe68d'

request_body.resource_id = 'e5e7d29d-5465-45ac-885f-4716a5ee74b5'

request_body.subject_id = '918e54be-12c4-4f4c-a6d3-2ee0e3661c51'

request_body.assignment_state = 'Eligible'

request_body.type = 'AdminAdd'

request_body.reason = 'Assign an eligible role'

schedule = GovernanceSchedule()
schedule.startDateTime = DateTime('2018-05-12T23:37:43.356Z')

schedule.endDateTime = DateTime('2018-11-08T23:37:43.356Z')

schedule.type = 'Once'


request_body.schedule = schedule



result = await client.privileged_access.by_privileged_acce_id('privilegedAccess-id').role_assignment_requests.post(request_body = request_body)


```