---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamworkTag()
request_body.display_name = 'Finance'

members_teamwork_tag_member1 = TeamworkTagMember()
members_teamwork_tag_member1.user_id = '92f6952f-61ca-4a94-8910-508a240bc167'


membersArray []= membersTeamworkTagMember1;
members_teamwork_tag_member2 = TeamworkTagMember()
members_teamwork_tag_member2.user_id = '085d800c-b86b-4bfc-a857-9371ad1caf29'


membersArray []= membersTeamworkTagMember2;
request_body.members(membersArray)





result = await client.teams.by_team_id('team-id').tags.post(request_body = request_body)


```