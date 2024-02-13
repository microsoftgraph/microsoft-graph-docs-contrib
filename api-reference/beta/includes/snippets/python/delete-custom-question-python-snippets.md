---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.custom_questions.by_meeting_registration_question_id('meetingRegistrationQuestion-id').delete()


```