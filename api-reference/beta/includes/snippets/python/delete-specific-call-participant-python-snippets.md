---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').delete()


```