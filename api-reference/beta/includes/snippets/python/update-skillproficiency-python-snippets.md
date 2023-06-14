---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SkillProficiency()
request_body.Categories(['Professional', ])

request_body.proficiency(SkillProficiencyLevel.AdvancedProfessional('skillproficiencylevel.advancedprofessional'))




result = await client.me.profile.skills.by_skill_id('skillProficiency-id').patch(request_body = request_body)


```