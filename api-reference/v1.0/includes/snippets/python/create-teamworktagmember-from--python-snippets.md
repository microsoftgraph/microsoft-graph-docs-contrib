---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamworkTagMember()
request_body.user_id = '97f62344-57dc-409c-88ad-c4af14158ff5'




result = await client.teams.by_team_id('team-id').tags.by_tag_id('teamworkTag-id').members.post(request_body = request_body)


```