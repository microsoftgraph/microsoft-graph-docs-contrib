---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SkillProficiency(
	categories = [
		"Professional",
	]
	proficiency = SkillProficiencyLevel.AdvancedProfessional,
)

result = await graph_client.me.profile.skills.by_skill_id('skillProficiency-id').patch(body = request_body)


```