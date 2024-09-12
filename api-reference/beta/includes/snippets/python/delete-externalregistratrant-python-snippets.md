---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.by_meeting_registrant_base_id('meetingRegistrantBase-id').delete()


```