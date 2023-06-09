---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamworkTag()
request_body.display_name = 'Finance'




result = await client.teams.by_team_id('team-id').tags.by_tag_id('teamworkTag-id').patch(request_body = request_body)


```