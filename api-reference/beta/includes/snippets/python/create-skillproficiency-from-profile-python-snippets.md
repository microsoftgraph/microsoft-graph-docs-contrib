---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SkillProficiency()
request_body.Categories(['Professional', ])

request_body.allowedaudiences(AllowedAudiences.Organization('allowedaudiences.organization'))

request_body.display_name = 'API Design'

request_body.proficiency(SkillProficiencyLevel.GeneralProfessional('skillproficiencylevel.generalprofessional'))

request_body.CollaborationTags(['ableToMentor', ])




result = await client.me.profile.skills.post(request_body = request_body)


```