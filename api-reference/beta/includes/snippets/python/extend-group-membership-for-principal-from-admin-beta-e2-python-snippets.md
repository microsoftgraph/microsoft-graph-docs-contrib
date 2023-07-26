---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrivilegedAccessGroupEligibilityScheduleRequest()
request_body.accessid(PrivilegedAccessGroupRelationships.Member('privilegedaccessgrouprelationships.member'))

request_body.principal_id = '3cce9d87-3986-4f19-8335-7ed075408ca2'

request_body.group_id = '2b5ed229-4072-478d-9504-a047ebd4b07d'

request_body.action(ScheduleRequestActions.AdminExtend('schedulerequestactions.adminextend'))

schedule_info = RequestSchedule()
schedule_info.startDateTime = DateTime('2023-02-06T19:25:00.000Z')

schedule_infoexpiration = ExpirationPattern()
schedule_infoexpiration.type(ExpirationPatternType.AfterDateTime('expirationpatterntype.afterdatetime'))

schedule_infoexpiration.endDateTime = DateTime('2023-02-07T20:56:00.000Z')


schedule_info.expiration = schedule_infoexpiration

request_body.schedule_info = schedule_info
request_body.justification = 'Extend eligible request.'




result = await client.identity_governance.privileged_access.group.eligibility_schedule_requests.post(request_body = request_body)


```