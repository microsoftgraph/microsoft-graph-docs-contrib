---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.learning_content import LearningContent
from msgraph_beta.generated.models.level import Level
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LearningContent(
	title = "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
	description = "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
	content_web_url = "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
	source_name = "MsLearn",
	thumbnail_web_url = "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
	language_tag = "en-us",
	number_of_pages = 9,
	duration = "PT20M",
	format = "Book",
	level = Level.Beginner,
	created_date_time = "2018-01-01T00:00:00",
	last_modified_date_time = "2021-04-01T04:26:06.1995367Z",
	additional_tags = [
		"Create private or public teams",
		"Add members to teams",
	],
	skill_tags = [
		"Create teams",
		"Teams channels",
		"Teams members",
	],
	is_active = True,
	is_premium = False,
	is_searchable = True,
	additional_data = {
			"contributor" : "Scott Simpson",
	}
)

result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_contents_with_external_id("{externalId}").patch(request_body)


```