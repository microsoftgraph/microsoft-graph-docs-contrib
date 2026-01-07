---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.profile_source import ProfileSource
from msgraph_beta.generated.models.profile_source_localization import ProfileSourceLocalization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProfileSource(
	odata_type = "#microsoft.graph.profileSource",
	source_id = "bamboohr1",
	kind = "BambooHR",
	display_name = "BambooHR Updated",
	web_url = "https://bamboohr.contoso.com/login",
	localizations = [
		ProfileSourceLocalization(
			display_name = "HR-Platform",
			web_url = "http://bamboohr.contoso.com/en-us/login",
			language_tag = "en-us",
		),
		ProfileSourceLocalization(
			display_name = "HR-Plattform",
			web_url = "http://bamboohr.contoso.com/de/login",
			language_tag = "de",
		),
	],
)

result = await graph_client.admin.people.profile_sources_with_source_id("{sourceId}").patch(request_body)


```