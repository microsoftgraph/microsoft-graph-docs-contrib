---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ClonePostRequestBody()
request_body.display_name = 'Library Assist'

request_body.description = 'Self help community for library'

request_body.mail_nickname = 'libassist'

request_body.partstoclone(ClonableTeamParts.Apps,tabs,settings,channels,members('clonableteamparts.apps,tabs,settings,channels,members'))

request_body.visibility(TeamVisibilityType.Public('teamvisibilitytype.public'))




await client.teams.by_team_id('team-id').clone.post(request_body = request_body)


```