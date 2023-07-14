---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateOrGetPostRequestBody()
request_body.startDateTime = DateTime('2020-02-06T01:49:21.3524945+00:00')

request_body.endDateTime = DateTime('2020-02-06T02:19:21.3524945+00:00')

request_body.subject = 'Create a meeting with customId provided'

request_body.external_id = '7eb8263f-d0e0-4149-bb1c-1f0476083c56'

participants = MeetingParticipants()
attendees_meeting_participant_info1 = MeetingParticipantInfo()
attendees_meeting_participant_info1identity = IdentitySet()
attendees_meeting_participant_info1identityuser = Identity()
attendees_meeting_participant_info1identityuser.id = '1f35f2e6-9cab-44ad-8d5a-b74c14720000'


attendees_meeting_participant_info1identity.user = attendees_meeting_participant_info1identityuser

attendees_meeting_participant_info1.identity = attendees_meeting_participant_info1identity
attendees_meeting_participant_info1.role(OnlineMeetingRole.Presenter('onlinemeetingrole.presenter'))

attendees_meeting_participant_info1.upn = 'test1@contoso.com'


attendeesArray []= attendeesMeetingParticipantInfo1;
participants.attendees(attendeesArray)



request_body.participants = participants



result = await client.me.online_meetings.create_or_get.post(request_body = request_body)


```