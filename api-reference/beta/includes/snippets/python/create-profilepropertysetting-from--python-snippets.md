---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.profile_property_setting import ProfilePropertySetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProfilePropertySetting(
	odata_type = "#microsoft.graph.profilePropertySetting",
	prioritized_source_urls = [
		"https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
	],
)

result = await graph_client.admin.people.profile_property_settings.post(request_body)


```