---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LearningContent()
request_body.title = 'Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle'

request_body.description = 'A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.'

request_body.content_web_url = 'https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/'

request_body.source_name = 'MsLearn'

request_body.thumbnail_web_url = 'https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF'

request_body.language_tag = 'en-us'

request_body.NumberOfPages = 9

request_body.duration =  \DateInterval('PT20M')

request_body.format = 'Book'

request_body.createdDateTime = DateTime('2018-01-01T00:00:00Z')

request_body.lastModifiedDateTime = DateTime('2021-04-01T04:26:06.1995367Z')

request_body.Contributors(['Lina Wagner', 'Lisa Richter', ])

request_body.AdditionalTags(['Create private or public teams', 'Add members to teams', ])

request_body.SkillTags(['Create teams', 'Teams channels', 'Teams members', ])

request_body.is_active = True

request_body.is_premium = False

request_body.is_searchable = True




result = await client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_contents.by_learning_content_id('learningContent-id').patch(request_body = request_body)


```