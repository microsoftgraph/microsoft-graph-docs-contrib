---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.skill_proficiency import SkillProficiency
from msgraph_beta.generated.models.skill_proficiency_level import SkillProficiencyLevel

graph_client = GraphServiceClient(credentials, scopes)

request_body = SkillProficiency(
	categories = [
		"Professional",
	],
	proficiency = SkillProficiencyLevel.AdvancedProfessional,
)

result = await graph_client.me.profile.skills.by_skill_proficiency_id('skillProficiency-id').patch(request_body)


```