---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.skill_proficiency import SkillProficiency

graph_client = GraphServiceClient(credentials, scopes)

request_body = SkillProficiency(
	categories = [
		"Professional",
	],
	proficiency = SkillProficiencyLevel.AdvancedProfessional,
)

result = await graph_client.me.profile.skills.by_skill_proficiency_id('skillProficiency-id').patch(request_body)


```