---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.learning_provider import LearningProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LearningProvider(
	display_name = "Microsoft",
	square_logo_web_url_for_dark_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	long_logo_web_url_for_dark_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	square_logo_web_url_for_light_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	long_logo_web_url_for_light_theme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	login_web_url = "https://www.linkedin.com/learning-login/teams",
	is_course_activity_sync_enabled = True,
)

result = await graph_client.employee_experience.learning_providers.post(request_body)


```