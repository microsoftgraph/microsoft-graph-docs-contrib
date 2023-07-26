---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LearningProvider()
request_body.display_name = 'Microsoft'

request_body.square_logo_web_url_for_dark_theme = 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png'

request_body.long_logo_web_url_for_dark_theme = 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png'

request_body.square_logo_web_url_for_light_theme = 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png'

request_body.long_logo_web_url_for_light_theme = 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png'

request_body.login_web_url = 'https://www.linkedin.com/learning-login/teams'

request_body.is_course_activity_sync_enabled = True




result = await client.employee_experience.learning_providers.post(request_body = request_body)


```