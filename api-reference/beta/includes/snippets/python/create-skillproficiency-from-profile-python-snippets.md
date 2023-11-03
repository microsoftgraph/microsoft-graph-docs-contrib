---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SkillProficiency(
	categories = [
		"Professional",
	],
	allowed_audiences = AllowedAudiences.Organization,
	display_name = "API Design",
	proficiency = SkillProficiencyLevel.GeneralProfessional,
	collaboration_tags = [
		"ableToMentor",
	],
)

result = await graph_client.me.profile.skills.post(request_body)


```