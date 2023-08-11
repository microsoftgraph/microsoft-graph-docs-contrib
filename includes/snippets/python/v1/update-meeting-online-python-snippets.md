---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.is_online_meeting = True

request_body.onlinemeetingprovider(OnlineMeetingProviderType.TeamsForBusiness('onlinemeetingprovidertype.teamsforbusiness'))




result = await client.me.events.by_event_id('event-id').patch(request_body = request_body)


```