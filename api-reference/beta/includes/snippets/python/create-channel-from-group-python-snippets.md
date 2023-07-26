---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Channel()
request_body.display_name = 'Architecture Discussion'

request_body.description = 'This channel is where we debate all future architecture plans'

request_body.membershiptype(ChannelMembershipType.Standard('channelmembershiptype.standard'))




result = await client.teams.by_team_id('team-id').channels.post(request_body = request_body)


```