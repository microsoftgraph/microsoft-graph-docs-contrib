---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.skill_proficiency import SkillProficiency
from msgraph_beta.generated.models.skill_proficiency_level import SkillProficiencyLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SkillProficiency(
	categories = [
		"Professional",
	],
	proficiency = SkillProficiencyLevel.AdvancedProfessional,
)

result = await graph_client.me.profile.skills.by_skill_proficiency_id('skillProficiency-id').patch(request_body)


```