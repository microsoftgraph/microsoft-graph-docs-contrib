---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.learning_provider import LearningProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = LearningProvider(
	display_name = "Microsoft",
	square_logo_web_url_for_dark_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	long_logo_web_url_for_dark_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	square_logo_web_url_for_light_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	long_logo_web_url_for_light_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	login_web_url = "https://www.linkedin.com/learning-login/teams",
	is_course_activity_sync_enabled = True,
)

result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').patch(request_body)


```