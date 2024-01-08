---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').recordings.get()


```