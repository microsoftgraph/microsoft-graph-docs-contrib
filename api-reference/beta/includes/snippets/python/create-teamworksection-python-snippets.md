---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.sections.sections_request_builder import SectionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.teamwork_section import TeamworkSection
from msgraph_beta.generated.models.section_display_icon import SectionDisplayIcon
from msgraph_beta.generated.models.section_sort_type import SectionSortType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamworkSection(
	display_name = "Project Alpha",
	display_icon = SectionDisplayIcon(
		icon_type = "🚀",
	),
	sort_type = SectionSortType.MostRecent,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"1742515200\"")


result = await graph_client.users.by_user_id('user-id').teamwork.sections.post(request_body, request_configuration = request_configuration)


```