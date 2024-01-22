---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



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