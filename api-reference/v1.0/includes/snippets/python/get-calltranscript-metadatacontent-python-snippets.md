---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').transcripts.by_call_transcript_id('callTranscript-id').metadata_content.get()


```